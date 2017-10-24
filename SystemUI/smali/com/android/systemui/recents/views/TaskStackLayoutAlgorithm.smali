.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;,
        Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    }
.end annotation


# instance fields
.field mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mBaseBottomMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseInitialBottomOffset:I

.field private mBaseInitialTopOffset:I

.field private mBaseSideMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mBaseTopMargin:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

.field mContext:Landroid/content/Context;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mFocusState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedBottomPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedCurve:Landroid/graphics/Path;

.field private mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedDimCurve:Landroid/graphics/Path;

.field private mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mFocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mFocusedTopPeekHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

.field public mFreeformRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFreeformStackGap:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontMostTaskP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field private mFullMinScrollP:F

.field private mInitialBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mInitialScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitialTopOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInitializeInterpolator:Z

.field private mInsetForCloseAllMargin:I

.field private mLayoutInset:I

.field mMaxScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMaxTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mMinMargin:I

.field mMinScrollP:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mMinTranslationZ:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mNaviBarHeight:I

.field mNumFreeformTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field mNumStackTasks:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mSplitMinScrollP:F

.field public mStackActionButtonRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackBottomOffset:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public mStackRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

.field public mSystemInsets:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskIndexMap:Landroid/util/SparseIntArray;

.field private mTaskIndexOverrideMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mTaskRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTaskViewFullScaleInset:F

.field private mTaskViewSplitScaleInset:F

.field private mUnfocusedCurve:Landroid/graphics/Path;

.field private mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedDimCurve:Landroid/graphics/Path;

.field private mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

.field private mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

.field private mUnfocusedScaleCurve:Landroid/graphics/Path;

.field private mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    sget-object v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->SPLIT:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 245
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    .line 248
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    .line 251
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 254
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    .line 257
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    .line 313
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    .line 358
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    .line 359
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    .line 365
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 366
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 374
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    .line 375
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    .line 376
    new-instance v2, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-direct {v2, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    .line 377
    const v2, 0x7f0d0325

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 378
    const v2, 0x7f0d0329

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    .line 380
    const v2, 0x7f0d033b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 379
    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 385
    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 386
    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 387
    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 388
    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 390
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_0

    .line 391
    new-instance v2, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 393
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 394
    .local v1, "resourceId":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    .line 372
    return-void
.end method

.method private constructFocusedCurve()Landroid/graphics/Path;
    .locals 9

    .prologue
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1463
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1464
    .local v3, "topPeekHeightPct":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1465
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1464
    div-float v0, v4, v5

    .line 1466
    .local v0, "bottomPeekHeightPct":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    .line 1467
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 1466
    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 1467
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1466
    div-float v1, v4, v5

    .line 1468
    .local v1, "minBottomPeekHeightPct":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1469
    .local v2, "p":Landroid/graphics/Path;
    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1470
    sub-float v4, v6, v3

    invoke-virtual {v2, v8, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1471
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v4, v4, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v4, v8, v4

    sub-float v4, v6, v4

    sub-float v5, v6, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1473
    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1474
    return-object v2
.end method

.method private constructFocusedDimCurve()Landroid/graphics/Path;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3e800000    # 0.25f

    .line 1601
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1604
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1605
    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1606
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v1, v1, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    div-float v1, v3, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1607
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1608
    return-object v0
.end method

.method private constructUnfocusedCurve()Landroid/graphics/Path;
    .locals 28

    .prologue
    .line 1487
    const v16, 0x3ecccccd    # 0.4f

    .line 1488
    .local v16, "cpoint1X":F
    const v17, 0x3f79999a    # 0.975f

    .line 1489
    .local v17, "cpoint1Y":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v27, v2, v3

    .line 1491
    .local v27, "topPeekHeightPct":F
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_0

    .line 1492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mLayoutInset:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v27, v2, v3

    .line 1495
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    .line 1488
    const v3, 0x3f79999a    # 0.975f

    .line 1495
    sub-float/2addr v2, v3

    const v3, 0x3dcccccc    # 0.099999994f

    div-float v26, v2, v3

    .line 1487
    .local v26, "slope":F
    const v2, 0x3ecccccd    # 0.4f

    .line 1496
    mul-float v2, v2, v26

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v25, v3, v2

    .line 1497
    .local v25, "b":F
    const v21, 0x3f266666    # 0.65f

    .local v21, "cpoint2X":F
    const v2, 0x3f266666    # 0.65f

    .line 1498
    mul-float v2, v2, v26

    add-float v12, v2, v25

    .line 1499
    .local v12, "cpoint2Y":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1500
    .local v1, "p":Landroid/graphics/Path;
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1503
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_8

    .line 1504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1505
    const/4 v3, 0x2

    .line 1504
    if-ne v2, v3, :cond_4

    .line 1506
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v2, :cond_2

    .line 1507
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v2, :cond_1

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1509
    const v3, 0x7f0c0057

    .line 1508
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1510
    .local v6, "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1511
    const v3, 0x7f0c0059

    .line 1510
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1512
    .local v7, "bridgeFirstY":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1514
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1594
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    :goto_0
    return-object v1

    .line 1516
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1517
    const v3, 0x7f0c0057

    .line 1516
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1518
    .restart local v6    # "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1519
    const v3, 0x7f0c0058

    .line 1518
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    .line 1520
    .local v11, "bridgeSecondX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1521
    const v3, 0x7f0c0059

    .line 1520
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1523
    .restart local v7    # "bridgeFirstY":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float/2addr v2, v7

    .line 1522
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1525
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float v10, v2, v7

    .line 1526
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v6

    .line 1524
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 1529
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    .end local v11    # "bridgeSecondX":F
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v2, :cond_3

    .line 1530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1531
    const v3, 0x7f0c0050

    .line 1530
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1532
    .restart local v6    # "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1533
    const v3, 0x7f0c0053

    .line 1532
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1534
    .restart local v7    # "bridgeFirstY":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1536
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1538
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1539
    const v3, 0x7f0c0050

    .line 1538
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1540
    .restart local v6    # "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1541
    const v3, 0x7f0c0052

    .line 1540
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    .line 1542
    .restart local v11    # "bridgeSecondX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1543
    const v3, 0x7f0c0053

    .line 1542
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1545
    .restart local v7    # "bridgeFirstY":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float/2addr v2, v7

    .line 1544
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1547
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float v10, v2, v7

    .line 1548
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v6

    .line 1546
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0

    .line 1552
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    .end local v11    # "bridgeSecondX":F
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    if-eqz v2, :cond_6

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1554
    const v3, 0x7f0c0057

    .line 1553
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1555
    .restart local v6    # "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1556
    const v3, 0x7f0c0058

    .line 1555
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    .line 1557
    .restart local v11    # "bridgeSecondX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1558
    const v3, 0x7f0c0059

    .line 1557
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1559
    .restart local v7    # "bridgeFirstY":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v2, :cond_5

    .line 1560
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1561
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1564
    :cond_5
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float/2addr v2, v7

    .line 1563
    invoke-virtual {v1, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1566
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v27

    sub-float v10, v2, v7

    .line 1567
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    move-object v8, v1

    move v9, v6

    .line 1565
    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0

    .line 1570
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    .end local v11    # "bridgeSecondX":F
    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v2, :cond_7

    .line 1571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1572
    const v3, 0x7f0c0051

    .line 1571
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1573
    .restart local v6    # "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1574
    const v3, 0x7f0c0054

    .line 1573
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1575
    .restart local v7    # "bridgeFirstY":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1577
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1579
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1580
    const v3, 0x7f0c0050

    .line 1579
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 1581
    .restart local v6    # "bridgeFirstX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1582
    const v3, 0x7f0c0053

    .line 1581
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 1583
    .restart local v7    # "bridgeFirstY":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v6, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const v3, 0x3a83126f    # 0.001f

    add-float v5, v2, v3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1585
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1591
    .end local v6    # "bridgeFirstX":F
    .end local v7    # "bridgeFirstY":F
    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v19, v2, v27

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f000000    # 0.5f

    move-object v13, v1

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1592
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v20, v2, v27

    const/high16 v19, 0x3f000000    # 0.5f

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move/from16 v22, v12

    invoke-virtual/range {v18 .. v24}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_0
.end method

.method private constructUnfocusedDimCurve()Landroid/graphics/Path;
    .locals 14

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    const v11, 0x3e19999a    # 0.15f

    const/4 v6, 0x0

    .line 1615
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    .line 1616
    .local v5, "focusX":F
    sub-float v1, v12, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v8, v5, v1

    .line 1617
    .local v8, "cpoint2X":F
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1620
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1621
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v5

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v5

    const/high16 v4, 0x3e400000    # 0.1875f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object v7, v0

    move v9, v6

    move v10, v8

    move v13, v11

    .line 1622
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 1623
    return-object v0
.end method

.method private constructUnfocusedScaleCurve()Landroid/graphics/Path;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1631
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1632
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1633
    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1634
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1635
    return-object v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;III)I
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneResId"    # I
    .param p2, "tabletResId"    # I
    .param p3, "xlargeTabletResId"    # I

    .prologue
    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move v4, p2

    move v5, p3

    move v6, p3

    .line 1403
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    return v0
.end method

.method public static getDimensionForDevice(Landroid/content/Context;IIIIII)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phonePortResId"    # I
    .param p2, "phoneLandResId"    # I
    .param p3, "tabletPortResId"    # I
    .param p4, "tabletLandResId"    # I
    .param p5, "xlargeTabletPortResId"    # I
    .param p6, "xlargeTabletLandResId"    # I

    .prologue
    .line 1413
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1414
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1415
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1416
    const/4 v4, 0x2

    .line 1415
    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    .line 1417
    .local v1, "isLandscape":Z
    :goto_0
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isXLargeScreen:Z

    if-eqz v3, :cond_2

    .line 1418
    if-eqz v1, :cond_1

    .end local p6    # "xlargeTabletLandResId":I
    :goto_1
    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .line 1415
    .end local v1    # "isLandscape":Z
    .restart local p6    # "xlargeTabletLandResId":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isLandscape":Z
    goto :goto_0

    :cond_1
    move p6, p5

    .line 1420
    goto :goto_1

    .line 1421
    :cond_2
    iget-boolean v3, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLargeScreen:Z

    if-eqz v3, :cond_4

    .line 1422
    if-eqz v1, :cond_3

    .end local p4    # "tabletLandResId":I
    :goto_2
    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p4    # "tabletLandResId":I
    :cond_3
    move p4, p3

    .line 1424
    goto :goto_2

    .line 1426
    :cond_4
    if-eqz v1, :cond_5

    .end local p2    # "phoneLandResId":I
    :goto_3
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    return v3

    .restart local p2    # "phoneLandResId":I
    :cond_5
    move p2, p1

    .line 1428
    goto :goto_3
.end method

.method private getNormalizedXFromFocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .prologue
    .line 1449
    if-nez p2, :cond_0

    .line 1450
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1452
    .local v0, "offset":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1453
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    .line 1451
    .end local v0    # "offset":F
    .end local v1    # "offsetPct":F
    :cond_0
    move v0, p1

    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method private getNormalizedXFromUnfocusedY(FI)F
    .locals 3
    .param p1, "y"    # F
    .param p2, "fromSide"    # I

    .prologue
    .line 1437
    if-nez p2, :cond_0

    .line 1438
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1440
    .local v0, "offset":F
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v0, v2

    .line 1441
    .local v1, "offsetPct":F
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    return v2

    .line 1439
    .end local v0    # "offset":F
    .end local v1    # "offsetPct":F
    :cond_0
    move v0, p1

    .restart local v0    # "offset":F
    goto :goto_0
.end method

.method private getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I
    .locals 3
    .param p1, "instance"    # Landroid/graphics/Rect;
    .param p2, "other"    # Landroid/graphics/Rect;
    .param p3, "value"    # I
    .param p4, "minValue"    # I
    .param p5, "extent"    # I

    .prologue
    .line 1646
    if-nez p5, :cond_0

    .line 1647
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    .line 1648
    .local v0, "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1649
    .end local v0    # "scale":F
    :cond_0
    const/4 v1, 0x1

    if-ne p5, v1, :cond_1

    .line 1650
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v0

    .line 1651
    .restart local v0    # "scale":F
    int-to-float v1, p3

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 1653
    .end local v0    # "scale":F
    :cond_1
    return p3
.end method

.method private isInvalidOverrideX(FFF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "overrideX"    # F
    .param p3, "newOverrideX"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 846
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 847
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    move v0, v1

    .line 848
    .local v0, "outOfBounds":Z
    :goto_0
    if-nez v0, :cond_0

    cmpl-float v3, p2, p1

    if-ltz v3, :cond_3

    cmpl-float v3, p1, p3

    if-ltz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    .end local v0    # "outOfBounds":Z
    :cond_1
    move v0, v1

    .line 846
    goto :goto_0

    :cond_2
    move v0, v2

    .line 847
    goto :goto_0

    .line 849
    .restart local v0    # "outOfBounds":Z
    :cond_3
    cmpg-float v3, p2, p1

    if-gtz v3, :cond_4

    cmpg-float v3, p1, p3

    if-lez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private updateFrontBackTransforms()V
    .locals 12

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    return-void

    .line 1665
    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    .line 1666
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMin:F

    .line 1665
    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v1

    .line 1667
    .local v1, "min":F
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v2, v2, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    .line 1668
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget v3, v3, Lcom/android/systemui/recents/views/Range;->relativeMax:F

    .line 1667
    invoke-static {v0, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v11

    .line 1669
    .local v11, "max":F
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1670
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move v2, v1

    .line 1669
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1671
    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 1672
    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move v3, v11

    move v4, v11

    .line 1671
    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1673
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1674
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1659
    return-void
.end method


# virtual methods
.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/model/Task;F)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F

    .prologue
    .line 766
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    if-eqz v4, :cond_0

    .line 767
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 768
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 769
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v0

    .line 770
    .local v0, "focusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v1

    .line 771
    .local v1, "focusedY":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getX(F)F

    move-result v2

    .line 772
    .local v2, "unfocusedRangeX":F
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v4

    add-float v3, p2, v4

    .line 773
    .local v3, "unfocusedTaskProgress":F
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 765
    .end local v0    # "focusedRangeX":F
    .end local v1    # "focusedY":F
    .end local v2    # "unfocusedRangeX":F
    .end local v3    # "unfocusedTaskProgress":F
    :cond_0
    return-void
.end method

.method public addUnfocusedTaskOverride(Lcom/android/systemui/recents/views/TaskView;F)V
    .locals 8
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "stackScroll"    # F

    .prologue
    const/4 v7, 0x0

    .line 784
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 785
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 787
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 788
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v6

    .line 789
    .local v2, "top":I
    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v0

    .line 790
    .local v0, "focusedRangeX":F
    int-to-float v5, v2

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v3

    .line 791
    .local v3, "unfocusedRangeX":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v5

    add-float v4, p2, v5

    .line 793
    .local v4, "unfocusedTaskProgress":F
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-nez v5, :cond_0

    .line 794
    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 795
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 783
    :cond_0
    return-void
.end method

.method public clearUnfocusedTaskOverrides()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 801
    return-void
.end method

.method public computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;"
        }
    .end annotation

    .prologue
    .line 899
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    .line 900
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    .line 904
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    if-nez v3, :cond_1

    .line 905
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 906
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 905
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3

    .line 911
    :cond_1
    new-instance v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v8}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 912
    .local v8, "tmpTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 913
    .local v12, "currentRange":Lcom/android/systemui/recents/views/Range;
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v12, v3}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 915
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v3, :cond_4

    .line 916
    const v21, 0x7f0d034a

    .line 919
    .local v21, "tHeaderBarHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 921
    .local v23, "taskBarHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 922
    .local v17, "numVisibleTasks":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/4 v5, 0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 923
    .local v18, "numVisibleThumbnails":I
    const/high16 v19, 0x4f000000

    .line 924
    .local v19, "prevScreenY":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v14, v3, -0x1

    .local v14, "i":I
    :goto_2
    if-ltz v14, :cond_b

    .line 925
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/model/Task;

    .line 928
    .local v22, "task":Lcom/android/systemui/recents/model/Task;
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_5

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 924
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 912
    .end local v12    # "currentRange":Lcom/android/systemui/recents/views/Range;
    .end local v14    # "i":I
    .end local v17    # "numVisibleTasks":I
    .end local v18    # "numVisibleThumbnails":I
    .end local v19    # "prevScreenY":F
    .end local v21    # "tHeaderBarHeight":I
    .end local v22    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v23    # "taskBarHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .restart local v12    # "currentRange":Lcom/android/systemui/recents/views/Range;
    goto :goto_0

    .line 917
    :cond_4
    const v21, 0x7f0d0344

    .restart local v21    # "tHeaderBarHeight":I
    goto :goto_1

    .line 933
    .restart local v14    # "i":I
    .restart local v17    # "numVisibleTasks":I
    .restart local v18    # "numVisibleThumbnails":I
    .restart local v19    # "prevScreenY":F
    .restart local v22    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v23    # "taskBarHeight":I
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    .line 934
    .local v4, "taskProgress":F
    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 938
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v3, :cond_6

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v15

    .line 939
    .local v15, "isFrontMostTaskInGroup":Z
    :goto_4
    if-eqz v15, :cond_a

    .line 940
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 941
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 942
    const/4 v11, 0x0

    move-object/from16 v3, p0

    move v5, v4

    .line 940
    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 943
    iget-object v3, v8, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    .line 944
    .local v20, "screenY":F
    sub-float v3, v19, v20

    move/from16 v0, v23

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    const/4 v13, 0x1

    .line 945
    .local v13, "hasVisibleThumbnail":Z
    :goto_5
    if-eqz v13, :cond_8

    .line 946
    add-int/lit8 v18, v18, 0x1

    .line 947
    add-int/lit8 v17, v17, 0x1

    .line 948
    move/from16 v19, v20

    goto :goto_3

    .line 938
    .end local v13    # "hasVisibleThumbnail":Z
    .end local v15    # "isFrontMostTaskInGroup":Z
    .end local v20    # "screenY":F
    :cond_6
    const/4 v15, 0x1

    goto :goto_4

    .line 944
    .restart local v15    # "isFrontMostTaskInGroup":Z
    .restart local v20    # "screenY":F
    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    .line 952
    .restart local v13    # "hasVisibleThumbnail":Z
    :cond_8
    move/from16 v16, v14

    .local v16, "j":I
    :goto_6
    if-ltz v16, :cond_b

    .line 953
    add-int/lit8 v17, v17, 0x1

    .line 954
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    .line 955
    invoke-virtual {v12, v4}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v3

    if-nez v3, :cond_9

    .line 952
    :cond_9
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 961
    .end local v13    # "hasVisibleThumbnail":Z
    .end local v16    # "j":I
    .end local v20    # "screenY":F
    :cond_a
    if-nez v15, :cond_2

    .line 963
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 966
    .end local v4    # "taskProgress":F
    .end local v15    # "isFrontMostTaskInGroup":Z
    .end local v22    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_b
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v3, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;-><init>(Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;II)V

    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "TaskStackLayoutAlgorithm"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1681
    const-string/jumbo v5, " numStackTasks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 1682
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1684
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1685
    const-string/jumbo v5, "insets="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1686
    const-string/jumbo v5, " stack="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1687
    const-string/jumbo v5, " task="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1688
    const-string/jumbo v5, " freeform="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    const-string/jumbo v5, " actionButton="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    invoke-static {v5}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1692
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v5, "minScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1694
    const-string/jumbo v5, " maxScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1695
    const-string/jumbo v5, " initialScroll="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(F)V

    .line 1696
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1698
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    const-string/jumbo v5, "focusState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 1700
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1702
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1703
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1704
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1705
    .local v3, "taskId":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    int-to-float v4, v5

    .line 1706
    .local v4, "x":F
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1708
    .local v2, "overrideX":F
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    const-string/jumbo v5, "taskId= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1710
    const-string/jumbo v5, " x= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(F)V

    .line 1711
    const-string/jumbo v5, " overrideX= "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1712
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1703
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1677
    .end local v0    # "i":I
    .end local v2    # "overrideX":F
    .end local v3    # "taskId":I
    .end local v4    # "x":F
    :cond_0
    return-void
.end method

.method public getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBackOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getDeltaPForY(II)F
    .locals 3
    .param p1, "downY"    # I
    .param p2, "y"    # I

    .prologue
    .line 1287
    sub-int v1, p2, p1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1288
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    .line 1287
    mul-float v0, v1, v2

    .line 1289
    .local v0, "deltaP":F
    neg-float v1, v0

    return v1
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    return v0
.end method

.method public getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontOfStackTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0
.end method

.method public getInitialFocusState()I
    .locals 3

    .prologue
    .line 856
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 857
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 858
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v2, :cond_1

    .line 859
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 861
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1239
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v1, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 1243
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1244
    .local v0, "overrideP":Ljava/lang/Float;
    if-nez v0, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 1247
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1269
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v1, v1

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v0

    .line 1270
    .local v0, "normX":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1272
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v1, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v1, v2

    .line 1274
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 1273
    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1

    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    int-to-float v1, v1

    .line 1278
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v2

    .line 1277
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float/2addr v1, v2

    .line 1278
    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 1277
    invoke-static {v1, v2, v3}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method getStackScrollForTaskIgnoreOverrides(Lcom/android/systemui/recents/model/Task;)F
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 10
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "focusState"    # I
    .param p4, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "forceUpdate"    # Z
    .param p7, "ignoreTaskOverrides"    # Z

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->isTransformAvailable(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1, p4, p0}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->getTransform(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 991
    return-object p4

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 995
    .local v9, "nonOverrideTaskProgress":I
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne v9, v0, :cond_2

    .line 996
    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 997
    return-object p4

    .line 999
    :cond_2
    if-eqz p7, :cond_3

    .line 1000
    int-to-float v1, v9

    .line 1002
    .local v1, "taskProgress":F
    :goto_0
    int-to-float v2, v9

    .line 1003
    const/4 v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v8, p6

    .line 1002
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V

    .line 1004
    return-object p4

    .line 1001
    .end local v1    # "taskProgress":F
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    goto :goto_0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v6, 0x0

    .line 975
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "ignoreTaskOverrides"    # Z

    .prologue
    .line 982
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 983
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    .line 982
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getStackTransform(FFFILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)V
    .locals 33
    .param p1, "taskProgress"    # F
    .param p2, "nonOverrideTaskProgress"    # F
    .param p3, "stackScroll"    # F
    .param p4, "focusState"    # I
    .param p5, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p6, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p7, "ignoreSingleTaskCase"    # Z
    .param p8, "forceUpdate"    # Z

    .prologue
    .line 1044
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v19

    .line 1047
    .local v19, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v23

    .line 1050
    .local v23, "unfocusedVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->isInRange(F)Z

    move-result v11

    .line 1053
    .local v11, "focusedVisible":Z
    if-nez p8, :cond_0

    if-eqz v23, :cond_6

    .line 1060
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v22

    .line 1063
    .local v22, "unfocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v10

    .line 1067
    .local v10, "focusedRangeX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v30, v0

    move/from16 v0, p3

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v5

    .line 1068
    .local v5, "boundedStackScroll":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v4

    .line 1072
    .local v4, "boundedScrollUnfocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v3

    .line 1076
    .local v3, "boundedScrollUnfocusedNonOverrideRangeX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v29, v0

    const v30, -0x800001

    move/from16 v0, p3

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v14

    .line 1077
    .local v14, "lowerBoundedStackScroll":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v15

    .line 1080
    .local v15, "lowerBoundedUnfocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/Range;->getNormalizedX(F)F

    move-result v13

    .line 1082
    .local v13, "lowerBoundedFocusedRangeX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->width()I

    move-result v30

    sub-int v29, v29, v30

    div-int/lit8 v26, v29, 0x2

    .line 1087
    .local v26, "x":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v29

    if-nez v29, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    if-eqz p7, :cond_7

    .line 1101
    :cond_1
    const/16 v24, 0x0

    .line 1103
    .local v24, "unfocusedY":I
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v29, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    .line 1104
    const/16 v30, 0x2

    .line 1103
    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolationOnLandscape(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    .line 1105
    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1113
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    .line 1113
    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v12, v0

    .line 1115
    .local v12, "focusedY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v21

    .line 1117
    .local v21, "unfocusedDim":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v9

    .line 1123
    .local v9, "focusedDim":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_2

    const/16 v29, 0x0

    cmpl-float v29, p2, v29

    if-nez v29, :cond_2

    .line 1124
    const/high16 v29, 0x3f000000    # 0.5f

    cmpl-float v29, v4, v29

    if-ltz v29, :cond_9

    .line 1125
    const/16 v21, 0x0

    .line 1133
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    .line 1134
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v12

    move/from16 v32, v0

    invoke-static/range {v30 .. v32}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v30

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 1133
    add-int v27, v29, v30

    .line 1136
    .local v27, "y":I
    const v29, 0x3e99999a    # 0.3f

    .line 1135
    add-float v29, v29, v3

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v29

    .line 1137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    .line 1135
    invoke-static/range {v29 .. v31}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v28

    .line 1138
    .local v28, "z":F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, v21

    invoke-static {v0, v1, v9}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v8

    .line 1139
    .local v8, "dimAlpha":F
    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp01(F)F

    move-result v29

    .line 1140
    const/16 v30, 0x0

    const/high16 v31, 0x40000000    # 2.0f

    .line 1139
    invoke-static/range {v29 .. v31}, Lcom/android/systemui/recents/misc/Utilities;->mapRange(FFF)F

    move-result v25

    .line 1145
    .end local v9    # "focusedDim":F
    .end local v12    # "focusedY":I
    .end local v21    # "unfocusedDim":F
    .end local v24    # "unfocusedY":I
    .local v25, "viewOutlineAlpha":F
    :goto_2
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v29, :cond_c

    .line 1146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewFullScaleInset:F

    move/from16 v18, v0

    .line 1147
    .local v18, "scaleInset":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 1148
    const v18, 0x3f6e147b    # 0.93f

    .line 1154
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v17

    .line 1155
    .local v17, "range":F
    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v18

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v30, v30, v17

    mul-float v30, v30, v29

    const/high16 v29, 0x3f800000    # 1.0f

    sub-float v29, v29, v17

    const/16 v31, 0x0

    cmpl-float v29, v29, v31

    if-lez v29, :cond_b

    const/high16 v29, 0x3f800000    # 1.0f

    :goto_4
    mul-float v29, v29, v30

    add-float v29, v29, v18

    const v30, 0x3f75c28f    # 0.96f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 1161
    .end local v17    # "range":F
    .end local v18    # "scaleInset":F
    :goto_5
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 1163
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v29, :cond_1a

    .line 1164
    const/4 v7, 0x0

    .line 1165
    .local v7, "checkPoint":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    .line 1166
    const/16 v30, 0x2

    .line 1165
    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 1167
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_d

    .line 1168
    const/high16 v7, 0x3e800000    # 0.25f

    .line 1172
    :goto_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 1173
    cmpl-float v29, v8, v7

    if-lez v29, :cond_f

    .line 1174
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_e

    .line 1175
    const/16 v29, 0x0

    .line 1174
    :goto_7
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 1212
    .end local v7    # "checkPoint":F
    :goto_8
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    move/from16 v29, v0

    if-eqz v29, :cond_4

    .line 1213
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    move/from16 v29, v0

    const v30, 0x3e99999a    # 0.3f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 1216
    :cond_4
    const/high16 v29, 0x40800000    # 4.0f

    div-float v29, v28, v29

    const/high16 v30, 0x40400000    # 3.0f

    mul-float v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 1217
    move-object/from16 v0, p5

    iput v8, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 1218
    move/from16 v0, v25

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    .line 1219
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1220
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    .line 1221
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    move/from16 v30, v0

    invoke-static/range {v29 .. v30}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 1222
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_1c

    .line 1223
    if-eqz p6, :cond_5

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v29, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-eqz v29, :cond_1b

    :cond_5
    const/16 v29, 0x1

    .line 1222
    :goto_9
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput-boolean v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 1043
    return-void

    .line 1053
    .end local v3    # "boundedScrollUnfocusedNonOverrideRangeX":F
    .end local v4    # "boundedScrollUnfocusedRangeX":F
    .end local v5    # "boundedStackScroll":F
    .end local v8    # "dimAlpha":F
    .end local v10    # "focusedRangeX":F
    .end local v13    # "lowerBoundedFocusedRangeX":F
    .end local v14    # "lowerBoundedStackScroll":F
    .end local v15    # "lowerBoundedUnfocusedRangeX":F
    .end local v22    # "unfocusedRangeX":F
    .end local v25    # "viewOutlineAlpha":F
    .end local v26    # "x":I
    .end local v27    # "y":I
    .end local v28    # "z":F
    :cond_6
    if-nez v11, :cond_0

    .line 1054
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    .line 1055
    return-void

    .line 1090
    .restart local v3    # "boundedScrollUnfocusedNonOverrideRangeX":F
    .restart local v4    # "boundedScrollUnfocusedRangeX":F
    .restart local v5    # "boundedStackScroll":F
    .restart local v10    # "focusedRangeX":F
    .restart local v13    # "lowerBoundedFocusedRangeX":F
    .restart local v14    # "lowerBoundedStackScroll":F
    .restart local v15    # "lowerBoundedUnfocusedRangeX":F
    .restart local v22    # "unfocusedRangeX":F
    .restart local v26    # "x":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v29, v0

    sub-float v29, v29, p3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v20, v29, v30

    .line 1091
    .local v20, "tmpP":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v31

    sub-int v30, v30, v31

    div-int/lit8 v30, v30, 0x2

    .line 1091
    add-int v6, v29, v30

    .line 1093
    .local v6, "centerYOffset":I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getYForDeltaP(FF)I

    move-result v29

    add-int v27, v6, v29

    .line 1094
    .restart local v27    # "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v28, v0

    .line 1095
    .restart local v28    # "z":F
    const/4 v8, 0x0

    .line 1096
    .restart local v8    # "dimAlpha":F
    const/high16 v25, 0x3f800000    # 1.0f

    .line 1087
    .restart local v25    # "viewOutlineAlpha":F
    goto/16 :goto_2

    .line 1109
    .end local v6    # "centerYOffset":I
    .end local v8    # "dimAlpha":F
    .end local v20    # "tmpP":F
    .end local v25    # "viewOutlineAlpha":F
    .end local v27    # "y":I
    .end local v28    # "z":F
    .restart local v24    # "unfocusedY":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v29

    const/high16 v30, 0x3f800000    # 1.0f

    sub-float v29, v30, v29

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Rect;->height()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    .line 1109
    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    goto/16 :goto_0

    .line 1127
    .restart local v9    # "focusedDim":F
    .restart local v12    # "focusedY":I
    .restart local v21    # "unfocusedDim":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f000000    # 0.5f

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getInterpolation(F)F

    move-result v16

    .line 1128
    .local v16, "offset":F
    sub-float v21, v21, v16

    .line 1129
    const/high16 v29, 0x3e800000    # 0.25f

    sub-float v29, v29, v16

    const/high16 v30, 0x3e800000    # 0.25f

    div-float v29, v30, v29

    mul-float v21, v21, v29

    goto/16 :goto_1

    .line 1150
    .end local v9    # "focusedDim":F
    .end local v12    # "focusedY":I
    .end local v16    # "offset":F
    .end local v21    # "unfocusedDim":F
    .end local v24    # "unfocusedY":I
    .restart local v8    # "dimAlpha":F
    .restart local v18    # "scaleInset":F
    .restart local v25    # "viewOutlineAlpha":F
    .restart local v27    # "y":I
    .restart local v28    # "z":F
    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 1151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewSplitScaleInset:F

    move/from16 v18, v0

    goto/16 :goto_3

    .line 1155
    .restart local v17    # "range":F
    :cond_b
    const/high16 v29, 0x41880000    # 17.0f

    goto/16 :goto_4

    .line 1158
    .end local v17    # "range":F
    .end local v18    # "scaleInset":F
    :cond_c
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    goto/16 :goto_5

    .line 1170
    .restart local v7    # "checkPoint":F
    :cond_d
    const v7, 0x3e570a3d    # 0.21f

    goto/16 :goto_6

    .line 1175
    :cond_e
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41a00000    # 20.0f

    mul-float v29, v29, v30

    goto/16 :goto_7

    .line 1176
    :cond_f
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-nez v29, :cond_11

    .line 1177
    cmpl-float v29, v8, v7

    if-lez v29, :cond_11

    .line 1178
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_10

    .line 1179
    const/16 v29, 0x0

    .line 1178
    :goto_a
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    .line 1179
    :cond_10
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41a00000    # 20.0f

    mul-float v29, v29, v30

    goto :goto_a

    .line 1181
    :cond_11
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    .line 1184
    :cond_12
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    .line 1185
    const v7, 0x3e6b851f    # 0.23f

    .line 1195
    :goto_b
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_17

    .line 1196
    cmpl-float v29, v8, v7

    if-lez v29, :cond_17

    .line 1197
    const v29, 0x3d23d70a    # 0.04f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_16

    .line 1198
    const/16 v29, 0x0

    .line 1197
    :goto_c
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    .line 1187
    :cond_13
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    .line 1188
    const/high16 v7, 0x3e800000    # 0.25f

    goto :goto_b

    .line 1189
    :cond_14
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    move/from16 v29, v0

    if-eqz v29, :cond_15

    .line 1190
    const/high16 v7, 0x3e800000    # 0.25f

    goto :goto_b

    .line 1192
    :cond_15
    const v7, 0x3e8a3d71    # 0.27f

    goto :goto_b

    .line 1198
    :cond_16
    const v29, 0x3d23d70a    # 0.04f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41c80000    # 25.0f

    mul-float v29, v29, v30

    goto :goto_c

    .line 1199
    :cond_17
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v29, v0

    if-nez v29, :cond_19

    .line 1200
    cmpl-float v29, v8, v7

    if-lez v29, :cond_19

    .line 1201
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_18

    .line 1202
    const/16 v29, 0x0

    .line 1201
    :goto_d
    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    .line 1202
    :cond_18
    const v29, 0x3d4ccccd    # 0.05f

    add-float v29, v29, v7

    sub-float v29, v29, v8

    const/high16 v30, 0x41a00000    # 20.0f

    mul-float v29, v29, v30

    goto :goto_d

    .line 1204
    :cond_19
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    .line 1209
    .end local v7    # "checkPoint":F
    :cond_1a
    const/high16 v29, 0x3f800000    # 1.0f

    move/from16 v0, v29

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    goto/16 :goto_8

    .line 1223
    :cond_1b
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 1222
    :cond_1c
    const/16 v29, 0x0

    goto/16 :goto_9
.end method

.method public getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackScroll"    # F
    .param p3, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p4, "frontTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1014
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 1015
    const/4 v6, 0x1

    .line 1016
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1014
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v8

    .line 1017
    .local v8, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v8, p5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v0

    return-object v0
.end method

.method public getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "topInset"    # I
    .param p4, "rightInset"    # I
    .param p5, "taskStackBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1311
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_5

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1313
    const/4 v2, 0x2

    .line 1312
    if-eq v0, v2, :cond_3

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1315
    const v2, 0x7f0d036b

    .line 1314
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1316
    .local v9, "topMargin":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1317
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 1318
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMobileKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1320
    const v2, 0x7f0d01ce

    .line 1319
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 1375
    :cond_0
    :goto_0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    add-int/2addr v2, v9

    .line 1377
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, p4

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 1375
    invoke-virtual {p5, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1380
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 1381
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 1380
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    .line 1382
    .local v7, "sideMargin":I
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v7, 0x2

    sub-int v8, v0, v2

    .line 1383
    .local v8, "targetStackWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1384
    const/4 v2, 0x2

    .line 1383
    if-ne v0, v2, :cond_1

    .line 1387
    new-instance v1, Landroid/graphics/Rect;

    .line 1388
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1389
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1387
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1391
    .local v1, "portraitDisplayRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, v1

    .line 1390
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v6

    .line 1393
    .local v6, "portraitSideMargin":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v2, v6, 0x2

    sub-int/2addr v0, v2

    .line 1392
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1395
    .end local v1    # "portraitDisplayRect":Landroid/graphics/Rect;
    .end local v6    # "portraitSideMargin":I
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 1308
    return-void

    .line 1323
    .end local v7    # "sideMargin":I
    .end local v8    # "targetStackWidth":I
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1325
    const v2, 0x7f0d0370

    .line 1324
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1327
    const v2, 0x7f0d01cd

    .line 1326
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    .line 1330
    .end local v9    # "topMargin":I
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1331
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1333
    const v2, 0x7f0d036b

    .line 1332
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1334
    .restart local v9    # "topMargin":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1335
    const v2, 0x7f0d01ce

    .line 1334
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    .line 1337
    .end local v9    # "topMargin":I
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1338
    const v2, 0x7f0d01cd

    .line 1337
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x0

    .line 1339
    .restart local v9    # "topMargin":I
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    goto/16 :goto_0

    .line 1343
    .end local v9    # "topMargin":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1344
    const/4 v2, 0x2

    .line 1343
    if-eq v0, v2, :cond_7

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1346
    const v2, 0x7f0d036b

    .line 1345
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1347
    .restart local v9    # "topMargin":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v0, v2, :cond_6

    .line 1348
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 1349
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMobileKeyboardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1351
    const v2, 0x7f0d01ce

    .line 1350
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    .line 1354
    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1356
    const v2, 0x7f0d036c

    .line 1355
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1358
    const v2, 0x7f0d01cd

    .line 1357
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    .line 1361
    .end local v9    # "topMargin":I
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 1362
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1364
    const v2, 0x7f0d036b

    .line 1363
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 1365
    .restart local v9    # "topMargin":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1366
    const v2, 0x7f0d01ce

    .line 1365
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/2addr v9, v0

    goto/16 :goto_0

    .line 1368
    .end local v9    # "topMargin":I
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1369
    const v2, 0x7f0d01cd

    .line 1368
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v9, v0, 0x0

    .line 1370
    .restart local v9    # "topMargin":I
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    goto/16 :goto_0
.end method

.method public getUntransformedTaskViewBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1230
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getYForDeltaP(FF)I
    .locals 4
    .param p1, "downScrollP"    # F
    .param p2, "p"    # F

    .prologue
    .line 1297
    sub-float v1, p2, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 1298
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/FreePathInterpolator;->getArcLength()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 1297
    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1299
    .local v0, "y":I
    neg-int v1, v0

    return v1
.end method

.method public initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V
    .locals 11
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;
    .param p3, "taskStackBounds"    # Landroid/graphics/Rect;
    .param p4, "state"    # Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 534
    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 536
    .local v9, "lastStackRect":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v10

    .line 537
    .local v10, "topMargin":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseBottomMargin:I

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 538
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 537
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v7

    .line 539
    .local v7, "bottomMargin":I
    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    .line 540
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 539
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getScaleForExtent(Landroid/graphics/Rect;Landroid/graphics/Rect;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    .line 541
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 544
    iput-object p4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mState:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    .line 545
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    .line 546
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    .line 547
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformStackGap:I

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move-object v0, p4

    move-object v3, p3

    move v4, v10

    .line 546
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->computeRects(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;III)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackActionButtonRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v10

    .line 551
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    add-int/2addr v4, v5

    .line 550
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 554
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    sub-int v8, v0, v1

    .line 556
    .local v8, "height":I
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    sub-int v8, v0, v1

    .line 559
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 561
    const/4 v1, 0x1

    .line 560
    if-ne v0, v1, :cond_1

    .line 562
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNaviBarHeight:I

    sub-int/2addr v8, v0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 569
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    if-eqz v0, :cond_2

    .line 530
    :goto_0
    return-void

    .line 571
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    .line 572
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    .line 574
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 575
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedDimCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    .line 576
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructFocusedDimCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    .line 578
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedDimCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 581
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_3

    .line 582
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->constructUnfocusedScaleCurve()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurve:Landroid/graphics/Path;

    .line 583
    new-instance v0, Lcom/android/systemui/recents/misc/FreePathInterpolator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurve:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/FreePathInterpolator;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedScaleCurveInterpolator:Lcom/android/systemui/recents/misc/FreePathInterpolator;

    .line 585
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitializeInterpolator:Z

    .line 588
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public reloadOnConfigurationChange(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x7f0d032b

    const v4, 0x7f0d0327

    const/4 v9, 0x2

    const v8, 0x7f0d0338

    const v3, 0x7f0d0337

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 403
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c0044

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 404
    const v2, 0x7f0c0045

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 403
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 406
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    .line 416
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletLayout:Z

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    .line 427
    :goto_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v9, :cond_2

    .line 430
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    .line 428
    if-eqz v0, :cond_2

    .line 431
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c004e

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 432
    const v2, 0x7f0c004f

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 431
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    .line 437
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    const v0, 0x7f0c0049

    .line 438
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    .line 444
    :goto_3
    const v0, 0x7f0c004a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewFullScaleInset:F

    .line 445
    const v0, 0x7f0c004b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskViewSplitScaleInset:F

    .line 451
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 452
    const v0, 0x7f0d0330

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 454
    const v0, 0x7f0d0331

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 453
    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedBottomPeekHeight:I

    .line 455
    const v0, 0x7f0d0339

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinTranslationZ:I

    .line 456
    const v0, 0x7f0d033a

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    .line 458
    const v1, 0x7f0d0333

    .line 459
    const v2, 0x7f0d0335

    move-object v0, p1

    move v4, v3

    move v5, v3

    move v6, v3

    .line 457
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialTopOffset:I

    .line 465
    const v1, 0x7f0d0334

    .line 466
    const v2, 0x7f0d0336

    move-object v0, p1

    move v3, v8

    move v4, v8

    move v5, v8

    move v6, v8

    .line 464
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseInitialBottomOffset:I

    .line 472
    const v0, 0x7f0d0332

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mLayoutInset:I

    .line 474
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    if-eqz v0, :cond_5

    .line 475
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v9, :cond_5

    .line 478
    const v0, 0x7f0c0056

    .line 477
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullMinScrollP:F

    .line 484
    :goto_5
    const v0, 0x7f0c005a

    .line 483
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSplitMinScrollP:F

    .line 486
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 401
    return-void

    .line 411
    :cond_0
    const v0, 0x7f0d0326

    .line 413
    const v1, 0x7f0d0328

    .line 410
    invoke-static {p1, v0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseTopMargin:I

    goto/16 :goto_0

    .line 421
    :cond_1
    const v0, 0x7f0d032a

    .line 423
    const v1, 0x7f0d032e

    .line 420
    invoke-static {p1, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mBaseSideMargin:I

    goto/16 :goto_1

    .line 434
    :cond_2
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c004c

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 435
    const v2, 0x7f0c004d

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 434
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto/16 :goto_2

    .line 442
    :cond_3
    const v0, 0x7f0c0048

    .line 441
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInsetForCloseAllMargin:I

    goto/16 :goto_3

    .line 448
    :cond_4
    new-instance v0, Lcom/android/systemui/recents/views/Range;

    const v1, 0x7f0c0046

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 449
    const v2, 0x7f0c0047

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 448
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/Range;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    goto/16 :goto_4

    .line 481
    :cond_5
    const v0, 0x7f0c0055

    .line 480
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullMinScrollP:F

    goto :goto_5
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 492
    return-void
.end method

.method public setFocusState(I)V
    .locals 2
    .param p1, "focusState"    # I

    .prologue
    .line 510
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 511
    .local v0, "prevFocusState":I
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusState:I

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->updateFrontBackTransforms()V

    .line 513
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mCb:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;->onFocusStateChanged(II)V

    .line 509
    :cond_0
    return-void
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 502
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 503
    return v0

    .line 501
    .end local v0    # "changed":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 13
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "ignoreScrollToFront"    # Z

    .prologue
    .line 715
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 717
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 719
    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_1

    .line 720
    iget-boolean v7, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 721
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v10

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 722
    if-nez p2, :cond_2

    iget-boolean v10, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v10, :cond_0

    if-eqz v7, :cond_2

    .line 714
    :cond_0
    return-void

    .line 719
    :cond_1
    const/4 v7, 0x1

    .local v7, "scrollToFront":Z
    goto :goto_0

    .line 724
    .end local v7    # "scrollToFront":Z
    :cond_2
    const/4 v2, 0x0

    .line 725
    .local v2, "initialNormX":[F
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 726
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialBottomOffset:I

    .line 725
    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 726
    const/4 v11, 0x1

    .line 725
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v11

    .line 727
    sget-boolean v10, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v10, :cond_3

    const v10, 0x3cf5c28f    # 0.03f

    .line 725
    :goto_1
    sub-float v5, v11, v10

    .line 728
    .local v5, "minBottomTaskNormX":F
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    .line 729
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 728
    add-int/2addr v10, v11

    .line 729
    iget v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinMargin:I

    .line 728
    sub-int/2addr v10, v11

    int-to-float v10, v10

    .line 729
    const/4 v11, 0x0

    .line 728
    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v4

    .line 730
    .local v4, "maxBottomTaskNormX":F
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_4

    .line 734
    const/4 v10, 0x2

    new-array v2, v10, [F

    .line 735
    .end local v2    # "initialNormX":[F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v11, 0x0

    aput v10, v2, v11

    .line 736
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedTopPeekHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    .line 745
    .local v2, "initialNormX":[F
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 746
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 747
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 748
    .local v8, "taskCount":I
    add-int/lit8 v0, v8, -0x1

    .local v0, "i":I
    :goto_3
    if-ltz v0, :cond_0

    .line 749
    sub-int v10, v8, v0

    add-int/lit8 v1, v10, -0x1

    .line 750
    .local v1, "indexFromFront":I
    array-length v10, v2

    if-ge v1, v10, :cond_0

    .line 753
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 754
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    aget v12, v2, v1

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v11

    .line 753
    add-float v6, v10, v11

    .line 755
    .local v6, "newTaskProgress":F
    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    iget-object v10, v10, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 748
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 727
    .end local v0    # "i":I
    .end local v1    # "indexFromFront":I
    .end local v4    # "maxBottomTaskNormX":F
    .end local v5    # "minBottomTaskNormX":F
    .end local v6    # "newTaskProgress":F
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    .local v2, "initialNormX":[F
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 739
    .restart local v4    # "maxBottomTaskNormX":F
    .restart local v5    # "minBottomTaskNormX":F
    :cond_4
    const/4 v10, 0x2

    new-array v2, v10, [F

    .line 740
    .end local v2    # "initialNormX":[F
    const/4 v10, 0x0

    aput v5, v2, v10

    .line 741
    iget v10, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v10

    const/4 v11, 0x1

    aput v10, v2, v11

    .line 739
    .local v2, "initialNormX":[F
    goto :goto_2
.end method

.method public transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 4
    .param p1, "transformOut"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p2, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1026
    if-eqz p2, :cond_0

    .line 1027
    move-object v0, p2

    .line 1029
    .local v0, "windowRect":Landroid/graphics/Rect;
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1030
    return-object p1

    .line 1028
    .end local v0    # "windowRect":Landroid/graphics/Rect;
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    .restart local v0    # "windowRect":Landroid/graphics/Rect;
    goto :goto_0
.end method

.method update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V
    .locals 21
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 597
    .local p2, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v12

    .line 598
    .local v12, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    .line 601
    .local v6, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->clear()V

    .line 604
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v16

    .line 605
    .local v16, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 606
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFrontMostTaskP:F

    .line 607
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 608
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 609
    return-void

    .line 613
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v3, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v13, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_3

    .line 616
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 617
    .local v14, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 615
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_1
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v17, :cond_2

    .line 621
    invoke-virtual {v14}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v17

    .line 620
    if-eqz v17, :cond_2

    .line 622
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 627
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    .line 628
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumFreeformTasks:I

    .line 632
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 633
    .local v15, "taskCount":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v15, :cond_4

    .line 634
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 635
    .restart local v14    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 639
    .end local v14    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformLayoutAlgorithm:Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/views/FreeformWorkspaceLayoutAlgorithm;->update(Ljava/util/List;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    .line 644
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 645
    .local v7, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v7, :cond_6

    .line 646
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v8

    .line 648
    .local v8, "launchTaskIndex":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getInitialFocusState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 649
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v10, v17, v18

    .line 650
    .local v10, "maxBottomOffset":I
    int-to-float v0, v10

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromFocusedY(FI)F

    move-result v9

    .line 651
    .local v9, "maxBottomNormX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 652
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 654
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 653
    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 655
    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 656
    int-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 596
    .end local v9    # "maxBottomNormX":F
    .end local v10    # "maxBottomOffset":I
    :goto_4
    return-void

    .line 647
    .end local v8    # "launchTaskIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v17, v0

    add-int/lit8 v8, v17, -0x1

    .restart local v8    # "launchTaskIndex":I
    goto/16 :goto_3

    .line 658
    .restart local v9    # "maxBottomNormX":F
    .restart local v10    # "maxBottomOffset":I
    :cond_7
    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 660
    .end local v9    # "maxBottomNormX":F
    .end local v10    # "maxBottomOffset":I
    :cond_8
    invoke-virtual {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 662
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 663
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 664
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto :goto_4

    .line 668
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackBottomOffset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v18

    add-int v10, v17, v18

    .line 669
    .restart local v10    # "maxBottomOffset":I
    int-to-float v0, v10

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v9

    .line 670
    .restart local v9    # "maxBottomNormX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 672
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v17, :cond_b

    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v17, :cond_b

    .line 673
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSplitMinScrollP:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 678
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    .line 679
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    .line 678
    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    .line 687
    :goto_6
    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 688
    iget-boolean v11, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 689
    :goto_7
    iget-boolean v0, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 690
    int-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    .line 676
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFullMinScrollP:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    goto :goto_5

    .line 682
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    .line 684
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 683
    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    goto :goto_6

    .line 687
    :cond_c
    const/4 v11, 0x1

    .local v11, "scrollToFront":Z
    goto :goto_7

    .line 691
    .end local v11    # "scrollToFront":Z
    :cond_d
    if-eqz v11, :cond_e

    .line 692
    int-to-float v0, v8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/systemui/recents/misc/Utilities;->clamp(FFF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    .line 697
    :cond_e
    sget-boolean v17, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v17, :cond_f

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v20, v0

    .line 698
    add-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4

    .line 703
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialTopOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getNormalizedXFromUnfocusedY(FI)F

    move-result v5

    .line 704
    .local v5, "initialTopNormX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mNumStackTasks:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 705
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/Range;->getAbsoluteX(F)F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 704
    sub-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(FF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    goto/16 :goto_4
.end method

.method public updateFocusStateOnScroll(FFF)F
    .locals 11
    .param p1, "lastTargetStackScroll"    # F
    .param p2, "targetStackScroll"    # F
    .param p3, "lastStackScroll"    # F

    .prologue
    const/4 v10, 0x0

    .line 811
    cmpl-float v8, p2, p3

    if-nez v8, :cond_0

    .line 812
    return p2

    .line 815
    :cond_0
    sub-float v0, p2, p3

    .line 816
    .local v0, "deltaScroll":F
    sub-float v1, p2, p1

    .line 817
    .local v1, "deltaTargetScroll":F
    move v4, p2

    .line 818
    .local v4, "newScroll":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mUnfocusedRange:Lcom/android/systemui/recents/views/Range;

    invoke-virtual {v8, p2}, Lcom/android/systemui/recents/views/Range;->offset(F)V

    .line 819
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_6

    .line 820
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 821
    .local v6, "taskId":I
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    int-to-float v7, v8

    .line 822
    .local v7, "x":F
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 823
    .local v5, "overrideX":F
    add-float v3, v5, v0

    .line 824
    .local v3, "newOverrideX":F
    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 826
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 819
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 827
    :cond_1
    cmpl-float v8, v5, v7

    if-ltz v8, :cond_3

    cmpg-float v8, v0, v10

    if-gtz v8, :cond_3

    .line 830
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 828
    :cond_3
    cmpg-float v8, v5, v7

    if-gtz v8, :cond_4

    cmpl-float v8, v0, v10

    if-gez v8, :cond_2

    .line 833
    :cond_4
    move v4, p3

    .line 834
    sub-float v3, v5, v1

    .line 835
    invoke-direct {p0, v7, v5, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInvalidOverrideX(FFF)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 836
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_1

    .line 838
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskIndexOverrideMap:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 842
    .end local v3    # "newOverrideX":F
    .end local v5    # "overrideX":F
    .end local v6    # "taskId":I
    .end local v7    # "x":F
    :cond_6
    return v4
.end method
