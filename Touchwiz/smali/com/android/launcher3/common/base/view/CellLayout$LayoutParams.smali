.class public Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1389
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1350
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1356
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1390
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1391
    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 1392
    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1393
    iput p4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1394
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 1369
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1350
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1356
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1370
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1371
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1372
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1375
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1356
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1376
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1377
    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1378
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 1381
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1350
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1356
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 1382
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 1383
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 1384
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1385
    iget v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1386
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1428
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 1452
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1432
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 1433
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1424
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 1425
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 1440
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 1441
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 1448
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 1449
    return-void
.end method

.method public setup(IIIII)V
    .locals 6
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "colCount"    # I

    .prologue
    .line 1397
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_1

    .line 1398
    iget v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 1399
    .local v0, "myCellHSpan":I
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 1400
    .local v1, "myCellVSpan":I
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 1401
    .local v2, "myCellX":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    .line 1403
    .local v3, "myCellY":I
    :goto_1
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_0

    .line 1404
    sub-int v4, p5, v2

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, v4, v5

    .line 1405
    if-gez v2, :cond_0

    .line 1406
    const/4 v2, 0x0

    .line 1410
    :cond_0
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 1412
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 1414
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 1415
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 1417
    .end local v0    # "myCellHSpan":I
    .end local v1    # "myCellVSpan":I
    .end local v2    # "myCellX":I
    .end local v3    # "myCellY":I
    :cond_1
    return-void

    .line 1400
    .restart local v0    # "myCellHSpan":I
    .restart local v1    # "myCellVSpan":I
    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    .line 1401
    .restart local v2    # "myCellX":I
    :cond_3
    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
