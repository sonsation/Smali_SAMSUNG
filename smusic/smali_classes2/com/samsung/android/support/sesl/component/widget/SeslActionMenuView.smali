.class public Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;
.source "SeslActionMenuView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuPresenterCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

.field private mOriginalEndPadding:I

.field private mOriginalOverflowEndPadding:I

.field private mOriginalOverflowStartPadding:I

.field private mOriginalStartPadding:I

.field private mOverflowButtonMinWidth:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setBaselineAligned(Z)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 90
    .local v1, "density":F
    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMinCellSize:I

    .line 91
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mGeneratedItemPadding:I

    .line 92
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 93
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupTheme:I

    .line 96
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView:[I

    const v3, 0x10102d8

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingStart:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalStartPadding:I

    .line 98
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingEnd:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalEndPadding:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView:[I

    const v3, 0x10102f6

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingStart:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowStartPadding:I

    .line 103
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingEnd:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowEndPadding:I

    .line 104
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_minWidth:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOverflowButtonMinWidth:I

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private getNumericValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 951
    if-nez p1, :cond_0

    .line 952
    const/4 v1, 0x0

    .line 961
    :goto_0
    return v1

    .line 955
    :cond_0
    const/4 v1, 0x0

    .line 957
    .local v1, "num":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 477
    .local v8, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 479
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 480
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 482
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    move-object v7, v11

    .line 484
    .local v7, "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 486
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 487
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 488
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 490
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 492
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 493
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 494
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 495
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 498
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 499
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expandable:Z

    .line 501
    iput v0, v8, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    .line 502
    mul-int v10, v0, p1

    .line 503
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 505
    return v0

    .line 482
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 484
    .restart local v7    # "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 498
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 249
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 250
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 251
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 253
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 254
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 256
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 259
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 263
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 265
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 267
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setMeasuredDimension(II)V

    .line 458
    :goto_0
    return-void

    .line 271
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 273
    .local v5, "cellSize":I
    move v8, v4

    .line 274
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 275
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 276
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 277
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 278
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 281
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 283
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildCount()I

    move-result v12

    .line 284
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_8

    .line 285
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 286
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 284
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 288
    :cond_2
    instance-of v0, v11, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    move/from16 v21, v0

    .line 289
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 291
    if-eqz v21, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 297
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 298
    .local v23, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expanded:Z

    .line 299
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->extraPixels:I

    .line 300
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    .line 301
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expandable:Z

    .line 302
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    .line 303
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    .line 304
    if-eqz v21, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 307
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 309
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 312
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 313
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 314
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 316
    :cond_5
    sub-int/2addr v8, v9

    .line 317
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 318
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 304
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 307
    goto :goto_4

    .line 323
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 328
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 329
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 330
    const v26, 0x7fffffff

    .line 331
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 332
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 333
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_d

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 335
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 338
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 333
    :cond_9
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 323
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 341
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 342
    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 343
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 344
    const/16 v27, 0x1

    goto :goto_8

    .line 345
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 346
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 347
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 352
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    .line 354
    move/from16 v0, v27

    if-le v0, v8, :cond_13

    .line 383
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 384
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 386
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 388
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 390
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 391
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 392
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 394
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 395
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 396
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 400
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 403
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_1f

    .line 404
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 403
    :cond_12
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 357
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 359
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_17

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 361
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 362
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 364
    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 359
    :cond_14
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 368
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 372
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    .line 373
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expanded:Z

    .line 374
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 377
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 378
    goto/16 :goto_6

    .line 383
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 400
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 406
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 407
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 408
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 410
    move-object/from16 v0, v23

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->extraPixels:I

    .line 411
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expanded:Z

    .line 412
    if-nez v20, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 415
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    .line 417
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 418
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 419
    move-object/from16 v0, v23

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->extraPixels:I

    .line 420
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expanded:Z

    .line 421
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    .line 422
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 427
    :cond_1d
    if-eqz v20, :cond_1e

    .line 428
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    .line 430
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 431
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 436
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 440
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 441
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 443
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 445
    .restart local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 441
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 447
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 448
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 453
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 454
    move/from16 v19, v25

    .line 457
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 681
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->dismissPopupMenus()Z

    .line 798
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 654
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;-><init>(II)V

    .line 656
    .local v0, "params":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->gravity:I

    .line 657
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 662
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 667
    if-eqz p1, :cond_2

    .line 668
    instance-of v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;)V

    .line 671
    .local v0, "result":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 672
    const/16 v1, 0x10

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->gravity:I

    .line 676
    .end local v0    # "result":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 668
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat$LayoutParams;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v0

    .line 688
    .local v0, "result":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 689
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    .line 723
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 725
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 726
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$MenuBuilderCallback;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 727
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 728
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setReserveOverflow(Z)V

    .line 729
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 731
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 732
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setMenuView(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V

    .line 735
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v1

    .line 729
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuPresenterCallback;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMenu()Landroid/view/Menu;

    .line 637
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupTheme:I

    return v0
.end method

.method getSumOfDigitsInBadges()I
    .locals 4

    .prologue
    .line 933
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-nez v3, :cond_1

    .line 934
    const/4 v2, 0x0

    .line 944
    :cond_0
    return v2

    .line 937
    :cond_1
    const/4 v2, 0x0

    .line 938
    .local v2, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 939
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 940
    .local v1, "itemImpl":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 941
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getNumericValue(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 938
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getWindowAnimations()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 805
    if-nez p1, :cond_1

    .line 806
    const/4 v2, 0x0

    .line 817
    :cond_0
    :goto_0
    return v2

    .line 808
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 809
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 811
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 812
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 814
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 815
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 711
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 712
    return-void
.end method

.method public invokeItem(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 695
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 698
    :cond_0
    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->updateMenuView(Z)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    .line 158
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->showOverflowMenu()Z

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView:[I

    const v3, 0x10102d8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 164
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalStartPadding:I

    .line 165
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingEnd:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalEndPadding:I

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslView:[I

    const v3, 0x10102f6

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingStart:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowStartPadding:I

    .line 170
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_paddingEnd:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowEndPadding:I

    .line 171
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslView_android_minWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOverflowButtonMinWidth:I

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 615
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onDetachedFromWindow()V

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->dismissPopupMenus()V

    .line 617
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 32
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItems:Z

    move/from16 v30, v0

    if-nez v30, :cond_1

    .line 511
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onLayout(ZIIII)V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildCount()I

    move-result v6

    .line 516
    .local v6, "childCount":I
    sub-int v30, p5, p3

    div-int/lit8 v15, v30, 0x2

    .line 517
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getDividerWidth()I

    move-result v7

    .line 518
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 519
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 520
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 521
    .local v16, "nonOverflowCount":I
    sub-int v30, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingLeft()I

    move-result v31

    sub-int v29, v30, v31

    .line 522
    .local v29, "widthRemaining":I
    const/4 v8, 0x0

    .line 523
    .local v8, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    .line 524
    .local v11, "isLayoutRtl":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 525
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 526
    .local v27, "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 524
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 530
    :cond_2
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 531
    .local v19, "p":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 532
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 533
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 534
    add-int v18, v18, v7

    .line 536
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 539
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingLeft()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v12, v30, v31

    .line 541
    .local v12, "l":I
    add-int v20, v12, v18

    .line 546
    .local v20, "r":I
    :goto_3
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 547
    .local v26, "t":I
    add-int v5, v26, v9

    .line 548
    .local v5, "b":I
    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 550
    sub-int v29, v29, v18

    .line 551
    const/4 v8, 0x1

    .line 552
    goto :goto_2

    .line 543
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    sub-int v20, v30, v31

    .line 544
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 553
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v31, v0

    add-int v30, v30, v31

    move-object/from16 v0, v19

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v31, v0

    add-int v21, v30, v31

    .line 554
    .local v21, "size":I
    add-int v17, v17, v21

    .line 555
    sub-int v29, v29, v21

    .line 556
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 557
    add-int v17, v17, v7

    .line 559
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 563
    .end local v19    # "p":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v27    # "v":Landroid/view/View;
    :cond_7
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_8

    if-nez v8, :cond_8

    .line 565
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 566
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 567
    .local v28, "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 568
    .restart local v9    # "height":I
    sub-int v30, p4, p2

    div-int/lit8 v14, v30, 0x2

    .line 569
    .local v14, "midHorizontal":I
    div-int/lit8 v30, v28, 0x2

    sub-int v12, v14, v30

    .line 570
    .restart local v12    # "l":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 571
    .restart local v26    # "t":I
    add-int v30, v12, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 575
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v30, 0x0

    :goto_4
    sub-int v22, v16, v30

    .line 576
    .local v22, "spacerCount":I
    const/16 v31, 0x0

    if-lez v22, :cond_b

    div-int v30, v29, v22

    :goto_5
    move/from16 v0, v31

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 578
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getWidth()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingRight()I

    move-result v31

    sub-int v25, v30, v31

    .line 580
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 581
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 582
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 583
    .local v13, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_c

    .line 580
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 575
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v27    # "v":Landroid/view/View;
    :cond_a
    const/16 v30, 0x1

    goto :goto_4

    .line 576
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v30, 0x0

    goto :goto_5

    .line 587
    .restart local v13    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v27    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    sub-int v25, v25, v30

    .line 588
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 589
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 590
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 591
    .restart local v26    # "t":I
    sub-int v30, v25, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 592
    iget v0, v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    sub-int v25, v25, v30

    goto :goto_7

    .line 595
    .end local v9    # "height":I
    .end local v13    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v27    # "v":Landroid/view/View;
    .end local v28    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getPaddingLeft()I

    move-result v24

    .line 596
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 597
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    .line 598
    .restart local v27    # "v":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 599
    .restart local v13    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I

    move-result v30

    const/16 v31, 0x8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    .line 596
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 603
    :cond_f
    iget v0, v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    move/from16 v30, v0

    add-int v24, v24, v30

    .line 604
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    .line 605
    .restart local v28    # "width":I
    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 606
    .restart local v9    # "height":I
    div-int/lit8 v30, v9, 0x2

    sub-int v26, v15, v30

    .line 607
    .restart local v26    # "t":I
    add-int v30, v24, v28

    add-int v31, v26, v9

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 608
    iget v0, v13, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    move/from16 v30, v0

    add-int v30, v30, v28

    add-int v30, v30, v23

    add-int v24, v24, v30

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 183
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItems:Z

    .line 184
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItems:Z

    .line 186
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 187
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItemsWidth:I

    .line 192
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 193
    .local v5, "widthSize":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 194
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItemsWidth:I

    .line 195
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildCount()I

    move-result v1

    .line 199
    .local v1, "childCount":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    if-lez v1, :cond_3

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->onMeasureExactFormat(II)V

    .line 245
    :goto_1
    return-void

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 184
    goto :goto_0

    .line 203
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_a

    .line 204
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    .line 206
    .local v3, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    iput v8, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    .line 208
    instance-of v6, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    if-eqz v6, :cond_8

    .line 209
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalStartPadding:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalEndPadding:I

    invoke-virtual {v0, v6, v8, v9, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 211
    add-int/lit8 v6, v1, -0x1

    if-ne v2, v6, :cond_7

    move-object v6, v0

    .line 212
    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_5

    .line 214
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalEndPadding:I

    iput v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->rightMargin:I

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 217
    .restart local v0    # "child":Landroid/view/View;
    :cond_5
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalEndPadding:I

    iput v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->leftMargin:I

    .line 218
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_6
    move-object v6, v0

    .line 221
    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setIsLastItem(Z)V

    move-object v6, v0

    .line 222
    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v6, v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setMinWidth(I)V

    .line 223
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowStartPadding:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v0, v6, v8, v9, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_3

    .line 226
    :cond_7
    add-int/lit8 v6, v1, -0x1

    if-ge v2, v6, :cond_4

    move-object v6, v0

    .line 227
    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v6

    if-nez v6, :cond_4

    .line 228
    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setIsLastItem(Z)V

    goto :goto_3

    .line 232
    .restart local v0    # "child":Landroid/view/View;
    :cond_8
    iget-boolean v6, v3, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_4

    .line 233
    instance-of v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v6, :cond_9

    move-object v6, v0

    .line 234
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowStartPadding:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v6, v9, v8, v10, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 235
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v6, v9}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_3

    .line 237
    .restart local v0    # "child":Landroid/view/View;
    :cond_9
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowStartPadding:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOriginalOverflowEndPadding:I

    invoke-virtual {v0, v6, v8, v9, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 238
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOverflowButtonMinWidth:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_3

    .line 243
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutCompat;->onMeasure(II)V

    goto/16 :goto_1
.end method

.method public peekMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 828
    return-void
.end method

.method public setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 744
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 745
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    .line 746
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

    .line 178
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMenu()Landroid/view/Menu;

    .line 626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 627
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 649
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mReserveOverflow:Z

    .line 650
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 117
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 118
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupTheme:I

    .line 119
    if-nez p1, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 143
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setMenuView(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V

    .line 144
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->mPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
