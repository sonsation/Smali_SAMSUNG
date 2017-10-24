.class public Lcom/android/internal/policy/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# static fields
.field private static final MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final SNAP_ASSURE_DEFAULT:I = 0xa

.field private static final SNAP_FIXED_RATIO:I = 0x1

.field private static final SNAP_MODE_16_9:I = 0x0

.field private static final SNAP_ONLY_1_1:I = 0x2


# instance fields
.field private final mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private final mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mFixedRatio:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsHorizontalDivision:Z

.field private final mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mSnapMode:I

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I
    .param p5, "isHorizontalDivision"    # Z
    .param p6, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    .line 112
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    .line 111
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    .line 114
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v0, v1

    .line 113
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    .line 115
    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 116
    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .line 117
    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 118
    iput-boolean p5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 122
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 123
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_longDeviceSnapMode:I

    .line 122
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    .line 130
    const v0, 0x1130005

    .line 129
    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    .line 132
    const v0, 0x10500c0

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 133
    invoke-direct {p0, p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateTargets(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 110
    return-void

    .line 124
    :cond_0
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    goto :goto_0
.end method

.method private addAssureDefaultTargets(ZI)V
    .locals 7
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .prologue
    .line 344
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 345
    .local v3, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 346
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 348
    .local v1, "end":I
    :goto_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    .line 349
    .local v2, "size":I
    add-int v4, v3, v2

    .line 350
    .local v4, "topPosition":I
    sub-int v5, v1, v2

    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v5, v6

    .line 351
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 342
    return-void

    .line 344
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "size":I
    .end local v3    # "start":I
    .end local v4    # "topPosition":I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    .restart local v3    # "start":I
    goto :goto_0

    .line 347
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .restart local v1    # "end":I
    goto :goto_1
.end method

.method private addFixedDivisionTargets(ZI)V
    .locals 7
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .prologue
    .line 315
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    .line 316
    .local v3, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 317
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    .line 319
    .local v1, "end":I
    :goto_1
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    sub-int v6, v1, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 320
    .local v2, "size":I
    add-int v4, v3, v2

    .line 321
    .local v4, "topPosition":I
    sub-int v5, v1, v2

    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v5, v6

    .line 322
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 314
    return-void

    .line 315
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "size":I
    .end local v3    # "start":I
    .end local v4    # "topPosition":I
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    .restart local v3    # "start":I
    goto :goto_0

    .line 318
    :cond_1
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .restart local v1    # "end":I
    goto :goto_1
.end method

.method private addMiddleTarget(Z)V
    .locals 5
    .param p1, "isHorizontalDivision"    # Z

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    .line 367
    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    .line 369
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    return-void
.end method

.method private addNonDismissingTargets(ZIII)V
    .locals 2
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "topPosition"    # I
    .param p3, "bottomPosition"    # I
    .param p4, "dividerMax"    # I

    .prologue
    .line 304
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 302
    :goto_0
    sub-int v0, p2, v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 306
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    .line 309
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 307
    :goto_1
    sub-int v0, p4, v0

    .line 311
    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    add-int/2addr v1, p3

    .line 307
    sub-int/2addr v0, v1

    invoke-direct {p0, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    .line 301
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1
.end method

.method private addRatio16_9Targets(ZI)V
    .locals 10
    .param p1, "isHorizontalDivision"    # Z
    .param p2, "dividerMax"    # I

    .prologue
    .line 326
    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->top:I

    .line 327
    .local v5, "start":I
    :goto_0
    if-eqz p1, :cond_1

    .line 328
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v8, v9

    .line 330
    .local v1, "end":I
    :goto_1
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    .line 331
    .local v6, "startOther":I
    :goto_2
    if-eqz p1, :cond_3

    .line 332
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v9

    .line 334
    .local v2, "endOther":I
    :goto_3
    sub-int v8, v2, v6

    int-to-float v8, v8

    const/high16 v9, 0x3f100000    # 0.5625f

    mul-float v3, v9, v8

    .line 335
    .local v3, "size":F
    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 336
    .local v4, "sizeInt":I
    add-int v7, v5, v4

    .line 337
    .local v7, "topPosition":I
    sub-int v8, v1, v4

    iget v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v8, v9

    .line 338
    .local v0, "bottomPosition":I
    invoke-direct {p0, p1, v7, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    .line 325
    return-void

    .line 326
    .end local v0    # "bottomPosition":I
    .end local v1    # "end":I
    .end local v2    # "endOther":I
    .end local v3    # "size":F
    .end local v4    # "sizeInt":I
    .end local v5    # "start":I
    .end local v6    # "startOther":I
    .end local v7    # "topPosition":I
    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    .restart local v5    # "start":I
    goto :goto_0

    .line 329
    :cond_1
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v1, v8, v9

    .restart local v1    # "end":I
    goto :goto_1

    .line 330
    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    .restart local v6    # "startOther":I
    goto :goto_2

    .line 333
    :cond_3
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v8, v9

    goto :goto_3
.end method

.method private calculateTargets(Z)V
    .locals 8
    .param p1, "isHorizontalDivision"    # Z

    .prologue
    const v7, 0x3eb33333    # 0.35f

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 277
    .local v0, "dividerMax":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v4, v4

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v5, v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    sparse-switch v2, :sswitch_data_0

    .line 295
    :goto_1
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 296
    .local v1, "navBarSize":I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    sub-int v4, v0, v1

    .line 297
    const/4 v5, 0x2

    .line 296
    invoke-direct {v3, v4, v0, v5, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    return-void

    .line 276
    .end local v0    # "dividerMax":I
    .end local v1    # "navBarSize":I
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    .restart local v0    # "dividerMax":I
    goto :goto_0

    .line 281
    :sswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    goto :goto_1

    .line 284
    :sswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    goto :goto_1

    .line 287
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    goto :goto_1

    .line 291
    :sswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addAssureDefaultTargets(ZI)V

    goto :goto_1

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    .restart local v1    # "navBarSize":I
    goto :goto_2

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    .line 91
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x1050021

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 95
    .local v9, "dividerWindowWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    sget v1, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 101
    .local v8, "dividerInsets":I
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 103
    mul-int/lit8 v4, v8, 0x2

    sub-int v4, v9, v4

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v5, :cond_0

    :goto_0
    move-object v6, p1

    .line 101
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    return-object v0

    :cond_0
    move v5, v6

    .line 104
    goto :goto_0
.end method

.method private getStartInset()I
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private maybeAddTarget(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smallerSize"    # I

    .prologue
    .line 361
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt p2, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    return-void
.end method

.method private snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 7
    .param p1, "position"    # I
    .param p2, "hardDismiss"    # Z

    .prologue
    .line 255
    const/4 v3, -0x1

    .line 256
    .local v3, "minIndex":I
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 257
    .local v2, "minDistance":F
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 258
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 259
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 260
    .local v5, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget v6, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v0, v6

    .line 261
    .local v0, "distance":F
    if-eqz p2, :cond_0

    .line 262
    invoke-static {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->-get0(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v6

    div-float/2addr v0, v6

    .line 264
    :cond_0
    cmpg-float v6, v0, v2

    if-gez v6, :cond_1

    .line 265
    move v3, v1

    .line 266
    move v2, v0

    .line 258
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "distance":F
    .end local v5    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v6
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 195
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 194
    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    .line 198
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 197
    div-float/2addr v0, v1

    return v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 182
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    .line 183
    .local v0, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 188
    :cond_1
    return-object v0
.end method

.method public calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1
    .param p1, "position"    # I
    .param p2, "velocity"    # F

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "hardDismiss"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 171
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 172
    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0

    .line 174
    :cond_2
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 5
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .param p2, "increment"    # I

    .prologue
    .line 405
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 406
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 407
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    .line 408
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 407
    rem-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .line 409
    .local v1, "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_1

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    .line 414
    :cond_1
    return-object v1

    .line 417
    .end local v1    # "newTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_2
    return-object p1
.end method

.method public getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    .line 209
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, p1

    .line 208
    if-ge v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getEndInset()I
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getMinimalSizeResizableTask()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    return v0
.end method

.method public getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 378
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 381
    :cond_0
    return-object p1
.end method

.method public getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .locals 3
    .param p1, "snapTarget"    # Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 386
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    .line 389
    :cond_0
    return-object p1
.end method

.method public isFirstSplitTargetAvailable()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastSplitTargetAvailable()Z
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitScreenFeasible()Z
    .locals 6

    .prologue
    .line 146
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 147
    .local v3, "statusBarSize":I
    iget-boolean v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 148
    .local v1, "navBarSize":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_1

    .line 149
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    .line 151
    .local v2, "size":I
    :goto_1
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v4, v5

    .line 152
    .local v0, "availableSpace":I
    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_2
    return v4

    .line 147
    .end local v0    # "availableSpace":I
    .end local v1    # "navBarSize":I
    .end local v2    # "size":I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->right:I

    .restart local v1    # "navBarSize":I
    goto :goto_0

    .line 150
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    goto :goto_1

    .line 152
    .restart local v0    # "availableSpace":I
    .restart local v2    # "size":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
