.class public Lcom/android/launcher3/home/WorkspaceCellLayout;
.super Lcom/android/launcher3/common/base/view/CellLayout;
.source "WorkspaceCellLayout.java"


# static fields
.field private static final DISABLE_BUTTON_ALPHA:F = 0.4f

.field private static final ENABLE_BUTTON_ALPHA:F = 1.0f

.field private static final PAGE_FULL_VI_DURATION:J = 0xc8L

.field static final TAG:Ljava/lang/String; = "WorkspaceCellLayout"


# instance fields
.field private mAlignButtonBottom:Landroid/widget/ImageView;

.field private mAlignButtonTop:Landroid/widget/ImageView;

.field private mAlignLayoutBottom:Landroid/widget/LinearLayout;

.field private mAlignLayoutHeight:I

.field private mAlignLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAlignLayoutTop:Landroid/widget/LinearLayout;

.field public mBackupItems:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/launcher3/home/BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultPadding:I

.field private mDividerBottom:Landroid/view/View;

.field private mDividerTop:Landroid/view/View;

.field private mDragBackground:Landroid/graphics/drawable/Drawable;

.field public mGridChanged:Z

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mNeedCustomLayout:Z

.field protected mOccupiedForGrid:[[Z

.field public mOutSideItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOverviewShrinkFactorReverse:F

.field private mPageDeleteBtn:Landroid/widget/ImageView;

.field private mPageFullVI:Landroid/animation/ValueAnimator;

.field private mPageFullVI_Started:Z

.field public mRestoredItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenGridHeightPadding:I

.field private mScreenGridShrinkFactorReverse:F

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field public mTempPage:Z

.field private mZeroPageSwitch:Landroid/widget/Switch;

.field private mZeroPageSwitchHeight:I

.field private mZeroPageSwitchLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    .line 94
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    .line 117
    new-instance v0, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 118
    new-instance v0, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    .line 119
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupOverviewLayout()V

    .line 120
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupScreenGridLayout()V

    .line 121
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeColorForBg(Z)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceCellLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceCellLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    return v0
.end method

.method private clearOccupied()V
    .locals 4

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    .line 656
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 657
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_1
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 656
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 661
    .end local v1    # "y":I
    :cond_1
    return-void
.end method

.method private gridSizeChanged(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    .line 473
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->setGridChangeState(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 476
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "childView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 478
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->makePreviousRectMap(Landroid/view/View;)V

    .line 480
    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 481
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 482
    .local v1, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 475
    .end local v1    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 483
    :cond_1
    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 484
    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    .line 485
    .local v3, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 486
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 489
    .end local v0    # "childView":Landroid/view/View;
    .end local v3    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    return-void
.end method

.method private reset(III)V
    .locals 17
    .param p1, "position"    # I
    .param p2, "diffX"    # I
    .param p3, "diffY"    # I

    .prologue
    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupied()V

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v14

    .line 554
    .local v14, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_8

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 556
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 557
    .local v16, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    .line 559
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 560
    .local v2, "cellX":I
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 561
    .local v3, "cellY":I
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 562
    .local v4, "spanX":I
    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 564
    .local v5, "spanY":I
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-le v1, v6, :cond_1

    .line 565
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 567
    const/4 v1, 0x1

    move/from16 v0, p1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 569
    :cond_0
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    add-int v2, v1, p2

    .line 573
    :cond_1
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-le v1, v6, :cond_3

    .line 574
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 576
    const/4 v1, 0x2

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 578
    :cond_2
    move-object/from16 v0, v16

    iget v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    add-int v3, v1, p3

    .line 582
    :cond_3
    if-nez p1, :cond_5

    .line 583
    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-gt v1, v6, :cond_4

    add-int v1, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-gt v1, v6, :cond_4

    .line 584
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    .line 554
    :cond_4
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 586
    :cond_5
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 587
    add-int/lit8 v1, p2, -0x1

    if-le v2, v1, :cond_4

    add-int v1, v3, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-gt v1, v6, :cond_4

    .line 588
    sub-int v7, v2, p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 590
    :cond_6
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 591
    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-gt v1, v6, :cond_4

    add-int/lit8 v1, p3, -0x1

    if-le v3, v1, :cond_4

    .line 592
    sub-int v8, v3, p3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v7, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 594
    :cond_7
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 595
    add-int/lit8 v1, p2, -0x1

    if-le v2, v1, :cond_4

    add-int/lit8 v1, p3, -0x1

    if-le v3, v1, :cond_4

    .line 596
    sub-int v7, v2, p2

    sub-int v8, v3, p3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 601
    .end local v2    # "cellX":I
    .end local v3    # "cellY":I
    .end local v4    # "spanX":I
    .end local v5    # "spanY":I
    .end local v13    # "child":Landroid/view/View;
    .end local v16    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_8
    return-void
.end method

.method private setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "alignlayout"    # Landroid/widget/LinearLayout;
    .param p2, "alignbutton"    # Landroid/widget/ImageView;
    .param p3, "divider"    # Landroid/view/View;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x1

    .line 782
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 784
    .local v0, "alignbuttonPadding":I
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 786
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 788
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 789
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 790
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 791
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 792
    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 793
    invoke-static {p2, p5}, Lcom/android/launcher3/Utilities;->setHoverPopupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 795
    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 798
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 799
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 801
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    .line 804
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, p2, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 808
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 810
    :cond_0
    return-void
.end method

.method private setupOverviewLayout()V
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    .line 126
    const/high16 v1, 0x42c80000    # 100.0f

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    .line 132
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 136
    .local v0, "alignbuttonPadding":I
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 138
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 140
    :cond_0
    return-void
.end method

.method private setupScreenGridLayout()V
    .locals 3

    .prologue
    .line 143
    const/high16 v0, 0x42c80000    # 100.0f

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridShrinkFactorReverse:F

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridShrinkFactorReverse:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    .line 147
    return-void
.end method

.method private setupZeroPageSwitchLayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 681
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 682
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    sub-int v2, v6, v7

    .line 684
    .local v2, "padding":I
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 685
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 686
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 689
    .local v4, "paddingforScale":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00bd

    .line 690
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 691
    .local v5, "paddingleft":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00be

    .line 692
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 694
    .local v3, "paddingRight":I
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_0

    move v6, v3

    :goto_0
    add-int/2addr v6, v4

    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_1

    .end local v5    # "paddingleft":I
    :goto_1
    add-int v8, v5, v4

    invoke-virtual {v7, v6, v9, v8, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 696
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    const v7, 0x7f0f0023

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setTextAppearance(I)V

    .line 697
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setMinHeight(I)V

    .line 699
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setScaleX(F)V

    .line 700
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setScaleY(F)V

    .line 701
    return-void

    .restart local v5    # "paddingleft":I
    :cond_0
    move v6, v5

    .line 694
    goto :goto_0

    :cond_1
    move v5, v3

    goto :goto_1
.end method

.method private updateIconViews()V
    .locals 18

    .prologue
    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_6

    .line 493
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 494
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 496
    instance-of v13, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v13, :cond_1

    move-object v3, v2

    .line 497
    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 498
    .local v3, "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->applyStyle()V

    .line 492
    .end local v3    # "folderVIew":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 499
    :cond_1
    instance-of v13, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v13, :cond_2

    move-object v7, v2

    .line 500
    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    .line 501
    .local v7, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual {v7}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    .line 502
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v7, v13}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 503
    .end local v7    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    instance-of v13, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v13, :cond_0

    .line 504
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 506
    .local v8, "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    if-eqz v8, :cond_0

    .line 507
    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    mul-int/2addr v14, v13

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    const/4 v15, 0x2

    if-lt v13, v15, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget v15, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v13, v15

    :goto_2
    add-int v11, v14, v13

    .line 509
    .local v11, "targetWidth":I
    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    mul-int/2addr v14, v13

    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    const/4 v15, 0x2

    if-lt v13, v15, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iget v15, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v15, v15, -0x1

    mul-int/2addr v13, v15

    :goto_3
    add-int v10, v14, v13

    .line 511
    .local v10, "targetHeight":I
    iget v13, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget v14, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    .line 512
    invoke-static {v13, v14, v11, v10}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v9

    .local v9, "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    move-object v13, v2

    .line 515
    check-cast v13, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v13, v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v13}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V

    .line 518
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 519
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 520
    invoke-virtual {v8}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->unbind()V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/home/Workspace;

    .line 524
    .local v12, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v12}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    .line 525
    .local v4, "currentScreenId":J
    iget-wide v14, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-eqz v13, :cond_5

    iget-wide v14, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    cmp-long v13, v14, v4

    if-nez v13, :cond_5

    .line 526
    invoke-virtual {v12, v8}, Lcom/android/launcher3/home/Workspace;->createAndBindWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto/16 :goto_1

    .line 507
    .end local v4    # "currentScreenId":J
    .end local v9    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .end local v10    # "targetHeight":I
    .end local v11    # "targetWidth":I
    .end local v12    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 509
    .restart local v11    # "targetWidth":I
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 528
    .restart local v4    # "currentScreenId":J
    .restart local v9    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .restart local v10    # "targetHeight":I
    .restart local v12    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_5
    invoke-virtual {v12, v8}, Lcom/android/launcher3/home/Workspace;->addWidgetsToBind(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    goto/16 :goto_1

    .line 533
    .end local v2    # "childView":Landroid/view/View;
    .end local v4    # "currentScreenId":J
    .end local v8    # "info":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    .end local v9    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .end local v10    # "targetHeight":I
    .end local v11    # "targetWidth":I
    .end local v12    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_6
    return-void
.end method


# virtual methods
.method addAlignLayoutBottom(Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 771
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    .line 772
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    .line 773
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    .line 775
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f02009c

    .line 776
    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 777
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090015

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    .line 775
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 778
    return-void
.end method

.method addAlignLayoutTop(Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 761
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    .line 762
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    .line 763
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    .line 765
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f02009d

    .line 766
    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 767
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090016

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    .line 765
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupAlignLayout(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/view/View;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 768
    return-void
.end method

.method protected addCrossHairView()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;I)V

    .line 894
    return-void
.end method

.method addPageDeleteBtn(Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, 0x1

    .line 737
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    .line 739
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f02008e

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 742
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 743
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 744
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v3, 0x7f020071

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 746
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "description":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->setHoverPopupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 752
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 753
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    .line 754
    return-void
.end method

.method addZeroPageSwitch(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z
    .param p3, "ccl"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 705
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    .line 706
    new-instance v0, Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    .line 707
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupZeroPageSwitchLayout()V

    .line 711
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 712
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 713
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 714
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 716
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 719
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 723
    :cond_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    .line 724
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 725
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f0e0027

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 727
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 728
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addView(Landroid/view/View;)V

    .line 730
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 734
    :cond_1
    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 860
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    .line 861
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 862
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeCrossHairFliter(Z)V

    .line 863
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 869
    :cond_1
    return-void
.end method

.method endPageFullVI()V
    .locals 5

    .prologue
    .line 310
    iget-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    if-nez v1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 315
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    .line 319
    .local v0, "ws":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 320
    const-string v1, "backgroundAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    .line 321
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 322
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/home/WorkspaceCellLayout$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/WorkspaceCellLayout$1;-><init>(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 336
    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    goto :goto_0

    .line 331
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    goto :goto_1

    .line 320
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method findNearestVacantAreaWithCell(IIII[IZ)V
    .locals 9
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I
    .param p6, "changeGrid"    # Z

    .prologue
    .line 635
    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eqz p6, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    :goto_0
    move-object v0, p5

    move v1, p3

    move v2, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v8

    .line 637
    .local v8, "foundCell":Z
    if-eqz v8, :cond_2

    .line 648
    :cond_0
    :goto_1
    return-void

    .line 635
    .end local v8    # "foundCell":Z
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    goto :goto_0

    .line 641
    .restart local v8    # "foundCell":Z
    :cond_2
    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eqz p6, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    :goto_2
    move-object v0, p5

    move v1, p3

    move v2, p4

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v8

    .line 643
    if-nez v8, :cond_0

    .line 647
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, p5, v1

    aput v2, p5, v0

    goto :goto_1

    .line 641
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    goto :goto_2
.end method

.method getAlignLayoutList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentIconSize()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getContentTop()I

    move-result v0

    return v0
.end method

.method getOutSideItems(I)Ljava/util/List;
    .locals 1
    .param p1, "outSidePosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/ScreenGridUtilities;->getPairOutSideItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPageDeleteBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getTopPaddingCustomPage()I
    .locals 5

    .prologue
    .line 873
    const/high16 v2, 0x42c80000    # 100.0f

    .line 874
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 875
    .local v1, "screenGridShrinkFactorReverse":F
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 878
    .local v0, "screenGridHeightPadding":I
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isVisibleGridPanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 880
    :goto_0
    return v0

    .line 878
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getZeroPageSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method getZeroPageSwitchLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initChildren(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    new-instance v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 152
    return-void
.end method

.method isPageFullVIStarted()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    return v0
.end method

.method markCellsForGrid(IIII)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    .line 651
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForView(IIII[[ZZ)V

    .line 652
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 671
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onAttachedToWindow()V

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mSlop:F

    .line 674
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupOverviewLayout()V

    .line 849
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupScreenGridLayout()V

    .line 850
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 851
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions()V

    .line 852
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateIconViews()V

    .line 856
    :goto_0
    return-void

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setupZeroPageSwitchLayout()V

    goto :goto_0
.end method

.method public onDragEnter()V
    .locals 3

    .prologue
    .line 345
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 346
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    .line 347
    .local v0, "dragMgr":Lcom/android/launcher3/common/drag/DragManager;
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    .line 348
    .local v1, "ws":Lcom/android/launcher3/home/Workspace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isInScrollArea()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->startPageFullVI()V

    .line 351
    :cond_0
    return-void
.end method

.method public onDragExit()V
    .locals 0

    .prologue
    .line 355
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 356
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->endPageFullVI()V

    .line 357
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    .line 175
    .local v0, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayout;->onLayout(ZIIII)V

    .line 393
    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a00b9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    mul-float/2addr v2, v4

    float-to-int v0, v2

    .line 397
    .local v0, "dividerHeight":I
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_5

    .line 398
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 399
    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOverviewShrinkFactorReverse:F

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v1, v2

    .line 402
    .local v1, "pageDeleteBtnSize":I
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_4

    move v4, v1

    :goto_1
    invoke-virtual {v5, v2, v3, v4, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 406
    .end local v1    # "pageDeleteBtnSize":I
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 407
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutTop:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 408
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 409
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr v4, v0

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    .line 409
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 412
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr v4, v5

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredHeight()I

    move-result v6

    .line 412
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 414
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 415
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerBottom:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 425
    .end local v0    # "dividerHeight":I
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->isGridChanging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 426
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    .line 428
    :cond_2
    return-void

    .line 402
    .restart local v0    # "dividerHeight":I
    .restart local v1    # "pageDeleteBtnSize":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    goto :goto_0

    .line 403
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    goto :goto_1

    .line 418
    .end local v1    # "pageDeleteBtnSize":I
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 419
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDividerTop:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    sub-int/2addr v4, v0

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    .line 419
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitchHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isVisibleGridPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 386
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->onMeasure(II)V

    .line 387
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 185
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    .line 186
    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    .line 188
    const/4 v0, 0x1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 214
    :cond_1
    :goto_0
    :pswitch_0
    return v0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xc8

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 198
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    .line 195
    :cond_2
    const/16 v1, 0x12c

    goto :goto_1

    .line 205
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 209
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 623
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeView(Landroid/view/View;)V

    .line 626
    :cond_0
    return-void
.end method

.method restoreGridSize(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 458
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eq v0, p2, :cond_1

    .line 459
    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 460
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 462
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 463
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 466
    invoke-direct {p0, v2, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->reset(III)V

    .line 468
    const-string v0, "WorkspaceCellLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreGridSize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    return-void
.end method

.method setBgImage(IZ)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "defaultPage"    # Z

    .prologue
    .line 225
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    .line 226
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 227
    return-void
.end method

.method setBgImageResource(IZZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "defaultPage"    # Z
    .param p3, "whiteBg"    # Z

    .prologue
    const v1, 0x7f020082

    const v2, 0x7f020081

    const/4 v4, 0x0

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d4

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 254
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 255
    return-void

    .line 234
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 235
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p3}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 237
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    .line 238
    if-eqz p2, :cond_4

    .line 239
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_3

    const v1, 0x7f020084

    :goto_1
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f020083

    goto :goto_1

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_5

    :goto_2
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2

    .line 245
    :cond_6
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    .line 246
    if-eqz p2, :cond_8

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_7

    const v1, 0x7f0200f1

    :goto_3
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    const v1, 0x7f0200f0

    goto :goto_3

    .line 250
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p3, :cond_9

    :goto_4
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_9
    move v1, v2

    goto :goto_4
.end method

.method public setCellDimensions()V
    .locals 7

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v6

    .line 158
    .local v6, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    .line 159
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    .line 160
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    .line 162
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 163
    iget-object v0, v6, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    if-eq v0, v1, :cond_1

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setCellDimensions(IIIII)V

    .line 170
    return-void
.end method

.method protected setChildrenLayout(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mZeroPageSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_0

    .line 434
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    add-int/2addr p2, v0

    .line 435
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignLayoutHeight:I

    sub-int/2addr p4, v0

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isVisibleGridPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    add-int/2addr p2, v0

    .line 441
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mScreenGridHeightPadding:I

    sub-int/2addr p4, v0

    .line 444
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenLayout(IIII)V

    .line 445
    return-void
.end method

.method setCustomFlag(Z)V
    .locals 0
    .param p1, "needCustomLayout"    # Z

    .prologue
    .line 677
    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mNeedCustomLayout:Z

    .line 678
    return-void
.end method

.method setEnabledOnAlignButton(Z)V
    .locals 6
    .param p1, "isTop"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    .line 830
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 831
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 832
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 833
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 835
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 836
    return-void

    :cond_0
    move v0, v2

    .line 830
    goto :goto_0

    :cond_1
    move v1, v2

    .line 831
    goto :goto_1

    :cond_2
    move v0, v4

    .line 832
    goto :goto_2

    :cond_3
    move v4, v3

    .line 835
    goto :goto_3
.end method

.method setEnabledOnAlignButton(ZZ)V
    .locals 4
    .param p1, "canAlignTop"    # Z
    .param p2, "canAlignBottom"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 839
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 841
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonTop:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 842
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 843
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 844
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mAlignButtonBottom:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 845
    return-void

    :cond_0
    move v0, v2

    .line 841
    goto :goto_0

    :cond_1
    move v1, v2

    .line 844
    goto :goto_1
.end method

.method setGridSizeForScreenGrid(IIZIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "animated"    # Z
    .param p4, "position"    # I
    .param p5, "diffX"    # I
    .param p6, "diffY"    # I

    .prologue
    .line 604
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    invoke-direct {p0, p3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->gridSizeChanged(Z)V

    .line 608
    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    .line 609
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    .line 610
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 611
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    .line 612
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 613
    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p6, 0x1

    invoke-direct {p0, p4, v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->reset(III)V

    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->requestLayout()V

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mCrossHairView:Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->invalidate()V

    .line 618
    :cond_1
    return-void
.end method

.method spanToPixel(II)[I
    .locals 5
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    .line 218
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellWidth()I

    move-result v2

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getWidthGap()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellHeight()I

    move-result v2

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getHeightGap()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method startPageFullVI()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 258
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    .line 259
    .local v2, "dragMgr":Lcom/android/launcher3/common/drag/DragManager;
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/Workspace;

    .line 260
    .local v6, "ws":Lcom/android/launcher3/home/Workspace;
    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v7

    if-nez v7, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-boolean v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    if-eqz v7, :cond_2

    .line 265
    invoke-virtual {v6, p0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v8

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getBackgroundAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    .line 266
    iput-boolean v9, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    .line 269
    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    if-nez v7, :cond_0

    .line 274
    new-array v1, v11, [I

    .line 275
    .local v1, "cellXY":[I
    const/4 v3, 0x1

    .local v3, "spanX":I
    const/4 v4, 0x1

    .line 277
    .local v4, "spanY":I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 278
    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-nez v7, :cond_3

    .line 279
    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_4

    .line 280
    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v7

    iget-object v5, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 281
    .local v5, "widget":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanX:I

    .line 282
    iget v4, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->minSpanY:I

    .line 286
    .end local v5    # "widget":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_4
    invoke-virtual {p0, v1, v3, v4, v9}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findCellForSpan([IIIZ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d3

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 291
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 292
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_5

    .line 293
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 296
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_6

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200d2

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDragBackground:Landroid/graphics/drawable/Drawable;

    .line 299
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v9, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    iget v10, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mDefaultPadding:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    .line 302
    const-string v7, "backgroundAlpha"

    new-array v8, v11, [F

    fill-array-data v8, :array_0

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 304
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 305
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageFullVI_Started:Z

    goto/16 :goto_0

    .line 302
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public touchPageDeleteBtn()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mPageDeleteBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    .line 758
    return-void
.end method

.method updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 537
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 540
    .local v0, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 541
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 542
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 543
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 544
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    .line 545
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    .line 546
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mChildren:Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    .line 548
    .end local v0    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method updateOccupied()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupiedForGrid:[[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOccupied:[[Z

    .line 667
    :cond_0
    return-void
.end method

.method public visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "dragOutline"    # Landroid/graphics/drawable/Drawable;
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "resize"    # Z

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    .line 364
    .local v0, "ws":Lcom/android/launcher3/home/Workspace;
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_1

    .line 365
    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p6, :cond_0

    if-gez p5, :cond_2

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->startPageFullVI()V

    .line 371
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 372
    return-void

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->endPageFullVI()V

    goto :goto_0
.end method
