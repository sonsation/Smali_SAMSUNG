.class public Lcom/android/launcher3/common/base/view/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCountX:I

.field private mHeightGap:I

.field private final mTmpCellXY:[I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mTmpCellXY:[I

    .line 46
    return-void
.end method


# virtual methods
.method protected buildCustomAnimationSet(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 239
    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 184
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 185
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 71
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 75
    .local v3, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 80
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    .line 71
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 10
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v4, 0x0

    .line 57
    if-nez p1, :cond_1

    move-object v3, v4

    .line 66
    :cond_0
    :goto_0
    return-object v3

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 59
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "tag":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_2

    .line 63
    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v8, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 59
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "v":Landroid/view/View;
    :cond_3
    move-object v3, v4

    .line 66
    goto :goto_0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v3, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 228
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 229
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method public getChildrenAllItems()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 212
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 214
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    .line 215
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 216
    .local v3, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v3    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 22
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 104
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    .line 105
    .local v5, "cellWidth":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    .line 106
    .local v6, "cellHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 107
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const-string v7, "previous_hostView"

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v17, 0x1

    .line 109
    .local v17, "setupLp":Z
    :goto_0
    if-eqz v17, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCountX:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setup(IIIII)V

    .line 114
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 115
    .local v15, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    iget v12, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 116
    .local v12, "childWidth":I
    iget v11, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 117
    .local v11, "childHeight":I
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v7, :cond_2

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 119
    .local v10, "awi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    if-eqz v15, :cond_1

    .line 120
    iget-boolean v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_4

    iget v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v18, v0

    .line 121
    .local v18, "spanX":I
    :goto_1
    iget-boolean v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_5

    iget v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v19, v0

    .line 122
    .local v19, "spanY":I
    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    mul-int v8, v18, v7

    const/4 v7, 0x2

    move/from16 v0, v18

    if-lt v0, v7, :cond_6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    add-int/lit8 v9, v18, -0x1

    mul-int/2addr v7, v9

    :goto_3
    add-int v21, v8, v7

    .line 123
    .local v21, "targetWidth":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    mul-int v8, v19, v7

    const/4 v7, 0x2

    move/from16 v0, v19

    if-lt v0, v7, :cond_7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    add-int/lit8 v9, v19, -0x1

    mul-int/2addr v7, v9

    :goto_4
    add-int v20, v8, v7

    .line 125
    .local v20, "targetHeight":I
    move/from16 v0, v18

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 126
    move/from16 v0, v19

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 129
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v16

    .local v16, "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    move-object/from16 v7, p1

    .line 130
    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    .line 132
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    .line 133
    move-object/from16 v0, v16

    iget v11, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    .line 135
    .end local v16    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .end local v18    # "spanX":I
    .end local v19    # "spanY":I
    .end local v20    # "targetHeight":I
    .end local v21    # "targetWidth":I
    :cond_1
    iput v12, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    .line 136
    iput v11, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    .line 139
    .end local v10    # "awi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_2
    iget v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 140
    .local v13, "childWidthMeasureSpec":I
    iget v7, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 141
    .local v14, "childheightMeasureSpec":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    .line 142
    return-void

    .line 107
    .end local v11    # "childHeight":I
    .end local v12    # "childWidth":I
    .end local v13    # "childWidthMeasureSpec":I
    .end local v14    # "childheightMeasureSpec":I
    .end local v15    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v17    # "setupLp":Z
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 120
    .restart local v10    # "awi":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .restart local v11    # "childHeight":I
    .restart local v12    # "childWidth":I
    .restart local v15    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v17    # "setupLp":Z
    :cond_4
    iget v0, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    move/from16 v18, v0

    goto :goto_1

    .line 121
    .restart local v18    # "spanX":I
    :cond_5
    iget v0, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move/from16 v19, v0

    goto :goto_2

    .line 122
    .restart local v19    # "spanY":I
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 123
    .restart local v21    # "targetWidth":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    .line 148
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 149
    invoke-virtual {p0, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 150
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 151
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 152
    .local v9, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v2, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    .line 153
    .local v2, "childLeft":I
    iget v3, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    .line 154
    .local v3, "childTop":I
    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v2

    iget v4, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    .line 156
    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->width:I

    add-int v4, v2, v0

    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->height:I

    add-int v5, v3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->buildCustomAnimationSet(Landroid/view/View;IIII)V

    .line 158
    iget-boolean v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->dropped:Z

    .line 161
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mTmpCellXY:[I

    .line 162
    .local v6, "cellXY":[I
    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 148
    .end local v2    # "childLeft":I
    .end local v3    # "childTop":I
    .end local v6    # "cellXY":[I
    .end local v9    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 87
    .local v1, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 88
    .local v4, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 89
    .local v2, "heightSpecSize":I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 176
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIII)V
    .locals 0
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "countX"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    .line 50
    iput p2, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    .line 51
    iput p3, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    .line 52
    iput p4, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    .line 53
    iput p5, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCountX:I

    .line 54
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 193
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 197
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 198
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 193
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 207
    return-void
.end method

.method public setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V
    .locals 6
    .param p1, "lp"    # Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .prologue
    .line 100
    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->mCountX:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setup(IIIII)V

    .line 101
    return-void
.end method
