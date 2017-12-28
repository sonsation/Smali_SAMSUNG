.class public Lcom/android/launcher3/home/HotseatCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "HotseatCellLayout.java"


# static fields
.field private static final REORDER_ANIMATION_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "HotseatCellLayout"


# instance fields
.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mMaxCellCount:I

.field private reorderAnimListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/HotseatCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/HotseatCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 458
    new-instance v0, Lcom/android/launcher3/home/HotseatCellLayout$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HotseatCellLayout$5;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAnimListener:Landroid/animation/Animator$AnimatorListener;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HotseatCellLayout;)Lcom/android/launcher3/home/Hotseat;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatCellLayout;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method private checkInvalidPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v0

    .line 450
    .local v0, "gridSize":I
    :goto_0
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 449
    .end local v0    # "gridSize":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v0

    goto :goto_0

    .line 450
    .restart local v0    # "gridSize":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getNextLp(Landroid/view/View;)[I
    .locals 9
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 266
    .local v2, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 269
    .local v3, "newLp":[I
    iget-object v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 270
    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    aput v5, v3, v7

    .line 271
    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellHeight:I

    iget v7, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    mul-int/2addr v5, v6

    aput v5, v3, v8

    .line 286
    .end local p1    # "child":Landroid/view/View;
    :goto_0
    return-object v3

    .line 273
    .restart local p1    # "child":Landroid/view/View;
    :cond_0
    check-cast p1, Lcom/android/launcher3/common/view/IconView;

    .end local p1    # "child":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v1

    .line 275
    .local v1, "iconSize":I
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    sub-int/2addr v6, v1

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 277
    .local v0, "extraMoveDistance":I
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountX:I

    iget v6, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x1

    .line 278
    .local v4, "tempCellX":I
    :goto_1
    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v4

    aput v5, v3, v7

    .line 279
    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    aput v5, v3, v8

    .line 280
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    if-le v5, v6, :cond_2

    .line 281
    aget v5, v3, v7

    sub-int/2addr v5, v0

    aput v5, v3, v7

    goto :goto_0

    .line 277
    .end local v4    # "tempCellX":I
    :cond_1
    iget v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_1

    .line 283
    .restart local v4    # "tempCellX":I
    :cond_2
    aget v5, v3, v7

    add-int/2addr v5, v0

    aput v5, v3, v7

    goto :goto_0
.end method

.method private moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "animate"    # Z
    .param p5, "realTimeReorder"    # Z

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v8

    .line 206
    .local v8, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 207
    .local v2, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v3, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 208
    .local v3, "oldX":I
    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 210
    .local v5, "oldY":I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 212
    .local v9, "newLp":[I
    if-eqz p5, :cond_0

    .line 213
    iput p2, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 214
    iput p3, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 215
    invoke-virtual {v8, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    .line 216
    const/4 v0, 0x0

    iget v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    aput v1, v9, v0

    .line 217
    const/4 v0, 0x1

    iget v1, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    aput v1, v9, v0

    .line 222
    :goto_0
    const/4 v0, 0x0

    aget v4, v9, v0

    .line 223
    .local v4, "newX":I
    const/4 v0, 0x1

    aget v6, v9, v0

    .line 225
    .local v6, "newY":I
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 227
    if-ne v3, v4, :cond_1

    if-ne v5, v6, :cond_1

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 229
    const/4 v10, 0x0

    .line 259
    :goto_1
    return-object v10

    .line 219
    .end local v4    # "newX":I
    .end local v6    # "newY":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->getNextLp(Landroid/view/View;)[I

    move-result-object v9

    goto :goto_0

    .line 232
    .restart local v4    # "newX":I
    .restart local v6    # "newY":I
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 234
    if-eqz p4, :cond_2

    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 236
    .local v10, "va":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    new-instance v0, Lcom/android/launcher3/home/HotseatCellLayout$1;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout$1;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 246
    new-instance v0, Lcom/android/launcher3/home/HotseatCellLayout$2;

    invoke-direct {v0, p0, v2, p1}, Lcom/android/launcher3/home/HotseatCellLayout$2;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 254
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    :cond_2
    iput v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 255
    iput v6, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 259
    const/4 v10, 0x0

    goto :goto_1

    .line 235
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    const/4 v4, 0x1

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 322
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    .line 325
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    move-result v1

    return v1
.end method

.method cellToPosition(II)I
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p2    # "cellY":I
    :goto_0
    return p2

    .restart local p2    # "cellY":I
    :cond_0
    move p2, p1

    goto :goto_0
.end method

.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method getEmptyCount(I)I
    .locals 1
    .param p1, "cellCount"    # I

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getItemPositionDescription(II)Ljava/lang/String;
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, p2

    .line 455
    .local v0, "pos":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900d5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "pos":I
    :cond_0
    move v0, p1

    .line 454
    goto :goto_0
.end method

.method getMaxCellCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mMaxCellCount:I

    return v0
.end method

.method gridSizeChanged(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V
    .locals 8
    .param p1, "prevGridIcon"    # Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .param p2, "animated"    # Z

    .prologue
    .line 351
    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 352
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/HotseatCellLayout$3;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/launcher3/home/HotseatCellLayout$3;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Z)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    :cond_0
    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    .line 361
    .local v0, "child":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 363
    .local v1, "childCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 364
    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 366
    .local v2, "childView":Landroid/view/View;
    instance-of v6, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_4

    move-object v3, v2

    .line 367
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 368
    .local v3, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 375
    .end local v3    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 376
    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    .end local v2    # "childView":Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V

    .line 363
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 369
    .restart local v2    # "childView":Landroid/view/View;
    :cond_4
    instance-of v6, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v6, :cond_2

    move-object v5, v2

    .line 370
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    .line 371
    .local v5, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v5}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 372
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1
.end method

.method hasEmptyCell()Z
    .locals 4

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getOccupied()[[Z

    move-result-object v0

    .line 291
    .local v0, "occupied":[[Z
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget v3, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountX:I

    if-ge v1, v3, :cond_2

    .line 292
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    iget v3, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountY:I

    if-ge v2, v3, :cond_1

    .line 293
    aget-object v3, v0, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 294
    const/4 v3, 0x1

    .line 298
    .end local v2    # "y":I
    :goto_2
    return v3

    .line 292
    .restart local v2    # "y":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v2    # "y":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mMaxCellCount:I

    if-lt v0, v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method realTimeReorder(II)Landroid/animation/AnimatorSet;
    .locals 12
    .param p1, "empty"    # I
    .param p2, "target"    # I

    .prologue
    const/4 v4, 0x1

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountY:I

    .line 167
    .local v6, "count":I
    :goto_0
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 168
    .local v11, "set":Landroid/animation/AnimatorSet;
    if-ne p2, p1, :cond_2

    .line 169
    const/4 v11, 0x0

    .line 200
    .end local v11    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-object v11

    .line 165
    .end local v6    # "count":I
    :cond_1
    iget v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCountX:I

    goto :goto_0

    .line 170
    .restart local v6    # "count":I
    .restart local v11    # "set":Landroid/animation/AnimatorSet;
    :cond_2
    if-le p2, p1, :cond_4

    .line 171
    const/4 v7, 0x1

    .line 176
    .local v7, "direction":I
    :goto_1
    move v8, p1

    .local v8, "i":I
    :goto_2
    if-eq v8, p2, :cond_0

    .line 177
    add-int v10, v8, v7

    .line 178
    .local v10, "nextPos":I
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_5

    div-int v2, v10, v6

    .line 179
    .local v2, "x":I
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_6

    rem-int v3, v10, v6

    .line 180
    .local v3, "y":I
    :goto_4
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_7

    .line 176
    :cond_3
    :goto_5
    add-int/2addr v8, v7

    goto :goto_2

    .line 173
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v7    # "direction":I
    .end local v8    # "i":I
    .end local v10    # "nextPos":I
    :cond_4
    const/4 v7, -0x1

    .restart local v7    # "direction":I
    goto :goto_1

    .line 178
    .restart local v8    # "i":I
    .restart local v10    # "nextPos":I
    :cond_5
    rem-int v2, v10, v6

    goto :goto_3

    .line 179
    .restart local v2    # "x":I
    :cond_6
    div-int v3, v10, v6

    goto :goto_4

    .line 186
    .restart local v1    # "v":Landroid/view/View;
    .restart local v3    # "y":I
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_8

    div-int v2, v8, v6

    .line 189
    :goto_6
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_9

    rem-int v3, v8, v6

    .line 190
    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_8
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->checkInvalidPosition(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 192
    .local v9, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v0, "HotseatCellLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realTimeReorder Item : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lp.x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lp.y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "empty : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->dumpHotseatItem()V

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "attempted to move icon to invalid position"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    .end local v9    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    rem-int v2, v8, v6

    goto :goto_6

    .line 189
    :cond_9
    div-int v3, v8, v6

    goto :goto_7

    :cond_a
    move v0, v2

    .line 190
    goto :goto_8

    :cond_b
    move-object v0, p0

    move v5, v4

    .line 197
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_5
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 330
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasTargetView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 333
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 335
    instance-of v1, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    .line 336
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSDT"

    const-string v3, "Folder"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 344
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 345
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    const v2, 0x7f0901c0

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090179

    .line 346
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v1, v2, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v7    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 339
    .restart local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 340
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "extra":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HSDT"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0

    .line 340
    .end local v3    # "extra":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method reorderAllChildren(Z[[ZIZ)Landroid/animation/AnimatorSet;
    .locals 17
    .param p1, "animate"    # Z
    .param p2, "occupied"    # [[Z
    .param p3, "target"    # I
    .param p4, "expandedGrid"    # Z

    .prologue
    .line 111
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 112
    .local v14, "set":Landroid/animation/AnimatorSet;
    const/4 v15, 0x0

    .local v15, "x":I
    const/16 v16, 0x0

    .line 113
    .local v16, "y":I
    const/4 v12, 0x0

    .line 114
    .local v12, "length":I
    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, p2, v1

    array-length v12, v1

    .line 117
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    .line 118
    .local v9, "index":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    move v10, v9

    .end local v9    # "index":I
    .local v10, "index":I
    :goto_2
    if-ge v8, v12, :cond_c

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    if-eqz p4, :cond_3

    add-int/lit8 v1, v12, -0x1

    sub-int v16, v1, v8

    .line 124
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_6

    move v9, v10

    .line 118
    .end local v10    # "index":I
    .restart local v9    # "index":I
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_2

    .line 115
    .end local v2    # "child":Landroid/view/View;
    .end local v8    # "i":I
    .end local v10    # "index":I
    :cond_1
    move-object/from16 v0, p2

    array-length v12, v0

    goto :goto_0

    .line 117
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .restart local v8    # "i":I
    .restart local v10    # "index":I
    :cond_3
    move/from16 v16, v8

    .line 120
    goto :goto_3

    .line 122
    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 v1, v12, -0x1

    sub-int v15, v1, v8

    :goto_5
    goto :goto_3

    :cond_5
    move v15, v8

    goto :goto_5

    .line 128
    .restart local v2    # "child":Landroid/view/View;
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 129
    .local v13, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 130
    if-eqz p4, :cond_7

    .line 131
    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v0, p3

    if-lt v1, v0, :cond_f

    .line 132
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 147
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->checkInvalidPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 149
    .local v11, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v1, "HotseatCellLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reorderAllChildren Item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lp.x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lp.y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->dumpHotseatItem()V

    .line 152
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "attempted to move icon to invalid position"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v9    # "index":I
    .end local v11    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v10    # "index":I
    :cond_7
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_6

    .line 138
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_8
    if-eqz p4, :cond_9

    .line 139
    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v0, p3

    if-lt v1, v0, :cond_f

    .line 140
    add-int/lit8 v9, v10, -0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_6

    .line 143
    .end local v9    # "index":I
    .restart local v10    # "index":I
    :cond_9
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    iput v10, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_6

    .line 147
    :cond_a
    iget v1, v13, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_7

    .line 154
    :cond_b
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/home/HotseatCellLayout;->moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_4

    .line 156
    .end local v2    # "child":Landroid/view/View;
    .end local v9    # "index":I
    .end local v13    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v10    # "index":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->dragging()Z

    move-result v1

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 157
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    const/4 v7, 0x1

    .line 158
    .local v7, "completeDnD":Z
    :goto_8
    if-eqz v7, :cond_d

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAnimListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    :cond_d
    return-object v14

    .line 157
    .end local v7    # "completeDnD":Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    .restart local v2    # "child":Landroid/view/View;
    .restart local v13    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_f
    move v9, v10

    .end local v10    # "index":I
    .restart local v9    # "index":I
    goto/16 :goto_6
.end method

.method reorderMakeCells(Z[[ZI)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "occupied"    # [[Z
    .param p3, "target"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAllChildren(Z[[ZIZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method reorderRemoveCells(Z[[Z)Landroid/animation/AnimatorSet;
    .locals 1
    .param p1, "animate"    # Z
    .param p2, "occupied"    # [[Z

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderAllChildren(Z[[ZIZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public setCellDimensions()V
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 69
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHeightGap:I

    iput v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mWidthGap:I

    .line 70
    return-void
.end method

.method public setGridSize(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 431
    iget-object v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    .line 432
    .local v2, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v4

    .line 434
    .local v4, "width":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableHeightPx:I

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 435
    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    .line 437
    .local v3, "height":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v1, v4, v5

    .line 438
    .local v1, "childWidthSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v0, v3, v5

    .line 439
    .local v0, "childHeightSize":I
    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mWidthGap:I

    invoke-static {v1, v5, p1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mFixedCellWidth:I

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellWidth:I

    .line 441
    iget v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHeightGap:I

    invoke-static {v0, v5, p2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->calculateCellWidthOrHeight(III)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mFixedCellHeight:I

    iput v5, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mCellHeight:I

    .line 443
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->setGridSize(II)V

    .line 444
    return-void

    .line 432
    .end local v0    # "childHeightSize":I
    .end local v1    # "childWidthSize":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_0
    iget v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->availableWidthPx:I

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 433
    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Hotseat;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    goto :goto_0

    .line 435
    .restart local v4    # "width":I
    :cond_1
    iget-object v5, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 436
    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getHotseatBarSize()I

    move-result v3

    goto :goto_1
.end method

.method setHotseat(Lcom/android/launcher3/home/Hotseat;)V
    .locals 0
    .param p1, "hotseat"    # Lcom/android/launcher3/home/Hotseat;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 74
    return-void
.end method

.method setMaxCellCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mMaxCellCount:I

    .line 78
    return-void
.end method

.method updateFolderGrid()V
    .locals 6

    .prologue
    .line 382
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 383
    .local v0, "delay":I
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher3/home/HotseatCellLayout$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HotseatCellLayout$4;-><init>(Lcom/android/launcher3/home/HotseatCellLayout;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    return-void
.end method

.method updateIconViews()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 404
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    .line 405
    .local v0, "child":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 406
    .local v1, "childCount":I
    iget-object v7, p0, Lcom/android/launcher3/home/HotseatCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    .line 408
    .local v3, "deviceProfile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 409
    invoke-virtual {p0, v8, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    .line 413
    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentHotseatGridIcon(I)Z

    .line 415
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_3

    .line 416
    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, "childView":Landroid/view/View;
    instance-of v7, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_2

    move-object v4, v2

    .line 419
    check-cast v4, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 420
    .local v4, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 415
    .end local v4    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 411
    .end local v2    # "childView":Landroid/view/View;
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {p0, v1, v8}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_0

    .line 421
    .restart local v2    # "childView":Landroid/view/View;
    .restart local v5    # "i":I
    :cond_2
    instance-of v7, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    move-object v6, v2

    .line 422
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .line 423
    .local v6, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 424
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_2

    .line 427
    .end local v2    # "childView":Landroid/view/View;
    .end local v6    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_3
    return-void
.end method
