.class public Lcom/android/launcher3/home/AutoAlignHelper;
.super Ljava/lang/Object;
.source "AutoAlignHelper.java"


# static fields
.field private static final ALIGN_ANIMATION_DURATION:I = 0xfa

.field private static ITEM_ALIGN_DOWNWARD:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static ITEM_ALIGN_UPWARD:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/android/launcher3/home/AutoAlignHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/home/AutoAlignHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    .line 149
    new-instance v0, Lcom/android/launcher3/home/AutoAlignHelper$2;

    invoke-direct {v0}, Lcom/android/launcher3/home/AutoAlignHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_DOWNWARD:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static autoAlignItems(Lcom/android/launcher3/common/base/view/CellLayout;ZZ)Z
    .locals 7
    .param p0, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p1, "isUpward"    # Z
    .param p2, "checkToAlign"    # Z

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v4, "oneByOneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 38
    .local v2, "countX":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    .line 40
    .local v3, "countY":I
    filled-new-array {v2, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    .line 42
    .local v1, "occupied":[[Z
    invoke-static {p0, v1, v4}, Lcom/android/launcher3/home/AutoAlignHelper;->findOneByOneItemsAndOccupiedPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZLjava/util/ArrayList;)V

    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 54
    .end local v1    # "occupied":[[Z
    .end local v2    # "countX":I
    .end local v3    # "countY":I
    .end local v4    # "oneByOneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_0
    :goto_0
    return v0

    .line 48
    .restart local v1    # "occupied":[[Z
    .restart local v2    # "countX":I
    .restart local v3    # "countY":I
    .restart local v4    # "oneByOneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_1
    invoke-static {v4, p1}, Lcom/android/launcher3/home/AutoAlignHelper;->sortItemsByCellPosition(Ljava/util/List;Z)V

    move-object v0, p0

    move v5, p1

    move v6, p2

    .line 50
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/home/AutoAlignHelper;->findEmptyCellAndAnimateToPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZIILjava/util/ArrayList;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method private static findEmptyCellAndAnimateToPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZIILjava/util/ArrayList;ZZ)Z
    .locals 20
    .param p0, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p1, "occupied"    # [[Z
    .param p2, "countX"    # I
    .param p3, "countY"    # I
    .param p5, "isUpward"    # Z
    .param p6, "checkToAlign"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            "[[ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, "oneByOneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v13, 0x0

    .line 88
    .local v13, "isAligned":Z
    const/4 v11, 0x0

    .line 89
    .local v11, "frontIndex":I
    if-eqz p5, :cond_2

    const/16 v16, 0x0

    .line 90
    .local v16, "startX":I
    :goto_0
    if-eqz p5, :cond_3

    const/16 v17, 0x0

    .line 91
    .local v17, "startY":I
    :goto_1
    if-eqz p5, :cond_4

    const/4 v12, 0x1

    .line 93
    .local v12, "increment":I
    :goto_2
    move/from16 v19, v17

    .local v19, "y":I
    :goto_3
    if-eqz p5, :cond_5

    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    .line 94
    :cond_0
    move/from16 v18, v16

    .local v18, "x":I
    :goto_4
    if-eqz p5, :cond_7

    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    .line 95
    :cond_1
    aget-object v2, p1, v18

    aget-boolean v2, v2, v19

    if-nez v2, :cond_a

    .line 96
    aget-object v2, p1, v18

    const/4 v4, 0x1

    aput-boolean v4, v2, v19

    .line 98
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v13

    .line 135
    .end local v18    # "x":I
    :goto_5
    return v2

    .line 89
    .end local v12    # "increment":I
    .end local v16    # "startX":I
    .end local v17    # "startY":I
    .end local v19    # "y":I
    :cond_2
    add-int/lit8 v16, p2, -0x1

    goto :goto_0

    .line 90
    .restart local v16    # "startX":I
    :cond_3
    add-int/lit8 v17, p3, -0x1

    goto :goto_1

    .line 91
    .restart local v17    # "startY":I
    :cond_4
    const/4 v12, -0x1

    goto :goto_2

    .line 93
    .restart local v12    # "increment":I
    .restart local v19    # "y":I
    :cond_5
    if-gez v19, :cond_0

    :cond_6
    move v2, v13

    .line 135
    goto :goto_5

    .line 94
    .restart local v18    # "x":I
    :cond_7
    if-gez v18, :cond_1

    .line 93
    :cond_8
    add-int v19, v19, v12

    goto :goto_3

    .line 102
    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 103
    .local v15, "oneByOneItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    .line 94
    .end local v15    # "oneByOneItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_a
    :goto_6
    add-int v18, v18, v12

    goto :goto_4

    .line 109
    .restart local v15    # "oneByOneItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_b
    if-eqz p6, :cond_c

    .line 110
    const/4 v2, 0x1

    goto :goto_5

    .line 113
    :cond_c
    move/from16 v0, v18

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 114
    move/from16 v0, v19

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 118
    .local v3, "childView":Landroid/view/View;
    if-eqz v3, :cond_e

    .line 119
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 120
    .local v14, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget-boolean v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_d

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 124
    :cond_d
    iget v4, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v5, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/16 v6, 0xfa

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    check-cast v10, [[Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    .line 128
    .end local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_e
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 129
    const/4 v13, 0x1

    goto :goto_6
.end method

.method private static findOneByOneItemsAndOccupiedPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZLjava/util/ArrayList;)V
    .locals 12
    .param p0, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p1, "occupied"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            "[[Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "oneByOneItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v11, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 61
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 62
    .local v2, "countX":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    .line 64
    .local v3, "countY":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 68
    .local v6, "tag":Ljava/lang/Object;
    instance-of v9, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v9, :cond_0

    move-object v5, v6

    .line 69
    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 71
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v9, v11, :cond_1

    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-ne v9, v11, :cond_1

    .line 72
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    .restart local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    iget v7, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .local v7, "x":I
    :goto_1
    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_0

    if-ge v7, v2, :cond_0

    .line 75
    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .local v8, "y":I
    :goto_2
    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    if-ge v8, v3, :cond_2

    .line 76
    aget-object v9, p1, v7

    aput-boolean v11, v9, v8

    .line 75
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 82
    .end local v1    # "childView":Landroid/view/View;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "tag":Ljava/lang/Object;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_3
    return-void
.end method

.method private static sortItemsByCellPosition(Ljava/util/List;Z)V
    .locals 1
    .param p1, "isUpward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    sget-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    sget-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_DOWNWARD:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
