.class public Lcom/android/launcher3/home/HomeFocusLogic;
.super Ljava/lang/Object;
.source "HomeFocusLogic.java"


# static fields
.field public static final CURRENT_PAGE_FIRST_ITEM:I = -0x6

.field public static final CURRENT_PAGE_LAST_ITEM:I = -0x7

.field private static final DEBUG:Z = false

.field public static final EMPTY:I = -0x1

.field public static final NEXT_PAGE_FIRST_ITEM:I = -0x8

.field public static final NEXT_PAGE_LEFT_COLUMN:I = -0x9

.field public static final NEXT_PAGE_RIGHT_COLUMN:I = -0xa

.field public static final NOOP:I = -0x1

.field public static final PIVOT:I = 0x64

.field public static final PREVIOUS_PAGE_FIRST_ITEM:I = -0x3

.field public static final PREVIOUS_PAGE_LAST_ITEM:I = -0x4

.field public static final PREVIOUS_PAGE_LEFT_COLUMN:I = -0x5

.field public static final PREVIOUS_PAGE_RIGHT_COLUMN:I = -0x2

.field public static final PREVIOUS_ZERO_PAGE:I = -0xb

.field private static final TAG:Ljava/lang/String; = "HomeFocusLogic"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFullMatrix(II)[[I
    .locals 4
    .param p0, "m"    # I
    .param p1, "n"    # I

    .prologue
    .line 180
    filled-new-array {p0, p1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 182
    .local v1, "matrix":[[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 183
    aget-object v2, v1, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    return-object v1
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I
    .locals 8
    .param p0, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    .line 195
    .local v6, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 196
    .local v3, "m":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    .line 198
    .local v5, "n":I
    invoke-static {v3, v5}, Lcom/android/launcher3/home/HomeFocusLogic;->createFullMatrix(II)[[I

    move-result-object v4

    .line 201
    .local v4, "matrix":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 202
    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 203
    .local v0, "cx":I
    invoke-virtual {v6, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 204
    .local v1, "cy":I
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_0

    sub-int v7, v3, v0

    add-int/lit8 v0, v7, -0x1

    .end local v0    # "cx":I
    :cond_0
    aget-object v7, v4, v0

    aput v2, v7, v1

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v1    # "cy":I
    :cond_1
    return-object v4
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I
    .locals 12
    .param p0, "iconLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p1, "pivotX"    # I
    .param p2, "pivotY"    # I

    .prologue
    const/4 v10, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    .line 286
    .local v5, "iconParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v9

    add-int/lit8 v0, v9, 0x1

    .line 287
    .local v0, "count_x":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v1

    .line 289
    .local v1, "count_y":I
    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createFullMatrix(II)[[I

    move-result-object v6

    .line 292
    .local v6, "matrix":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 293
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v2, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 294
    .local v2, "cx":I
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v3, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 295
    .local v3, "cy":I
    if-gez p1, :cond_0

    .line 296
    sub-int v9, v2, p1

    aget-object v9, v6, v9

    aput v4, v9, v3

    .line 292
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 298
    :cond_0
    aget-object v9, v6, v2

    aput v4, v9, v3

    goto :goto_1

    .line 302
    .end local v2    # "cx":I
    .end local v3    # "cy":I
    :cond_1
    add-int/lit8 v9, v0, -0x1

    invoke-static {p1, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 303
    .local v7, "x":I
    add-int/lit8 v9, v1, -0x1

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 304
    .local v8, "y":I
    aget-object v9, v6, v7

    const/16 v10, 0x64

    aput v10, v9, v8

    .line 306
    if-ge p1, v0, :cond_2

    if-lt p2, v1, :cond_3

    .line 307
    :cond_2
    const-string v9, "HomeFocusLogic"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PIVOT error, pivotX: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", count_x: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pivotY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", count_y: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    return-object v6
.end method

.method public static createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I
    .locals 12
    .param p0, "iconLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p1, "hotseatLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "isHorizontal"    # Z

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    .line 222
    .local v5, "iconParent":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    .line 225
    .local v3, "hotseatParent":Landroid/view/ViewGroup;
    if-eqz p2, :cond_1

    .line 226
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v10

    if-le v9, v10, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v6

    .line 231
    .local v6, "m":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v10

    add-int v8, v9, v10

    .line 240
    .local v8, "n":I
    :goto_1
    invoke-static {v6, v8}, Lcom/android/launcher3/home/HomeFocusLogic;->createFullMatrix(II)[[I

    move-result-object v7

    .line 243
    .local v7, "matrix":[[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 244
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 245
    .local v0, "cx":I
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 246
    .local v1, "cy":I
    aget-object v9, v7, v0

    aput v4, v9, v1

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 229
    .end local v0    # "cx":I
    .end local v1    # "cy":I
    .end local v4    # "i":I
    .end local v6    # "m":I
    .end local v7    # "matrix":[[I
    .end local v8    # "n":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v6

    .restart local v6    # "m":I
    goto :goto_0

    .line 233
    .end local v6    # "m":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v10

    if-le v9, v10, :cond_2

    .line 234
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    .line 238
    .restart local v8    # "n":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v10

    add-int v6, v9, v10

    .restart local v6    # "m":I
    goto :goto_1

    .line 236
    .end local v6    # "m":I
    .end local v8    # "n":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v8

    .restart local v8    # "n":I
    goto :goto_3

    .line 253
    .restart local v4    # "i":I
    .restart local v6    # "m":I
    .restart local v7    # "matrix":[[I
    :cond_3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    :goto_4
    if-ltz v4, :cond_5

    .line 254
    const/4 v2, 0x0

    .line 255
    .local v2, "delta":I
    if-eqz p2, :cond_4

    .line 257
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 258
    .restart local v0    # "cx":I
    add-int/lit8 v9, v0, 0x0

    aget-object v9, v7, v9

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v10

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/2addr v11, v4

    aput v11, v9, v10

    .line 253
    .end local v0    # "cx":I
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 261
    :cond_4
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, v9, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 262
    .restart local v1    # "cy":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v9

    aget-object v9, v7, v9

    add-int/lit8 v10, v1, 0x0

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/2addr v11, v4

    aput v11, v9, v10

    goto :goto_5

    .line 268
    .end local v1    # "cy":I
    .end local v2    # "delta":I
    :cond_5
    return-object v7
.end method

.method private static getStringIndex(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 561
    packed-switch p0, :pswitch_data_0

    .line 579
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 563
    :pswitch_1
    const-string v0, "NOOP"

    goto :goto_0

    .line 565
    :pswitch_2
    const-string v0, "PREVIOUS_PAGE_FIRST"

    goto :goto_0

    .line 567
    :pswitch_3
    const-string v0, "PREVIOUS_PAGE_LAST"

    goto :goto_0

    .line 569
    :pswitch_4
    const-string v0, "PREVIOUS_PAGE_RIGHT_COLUMN"

    goto :goto_0

    .line 571
    :pswitch_5
    const-string v0, "CURRENT_PAGE_FIRST"

    goto :goto_0

    .line 573
    :pswitch_6
    const-string v0, "CURRENT_PAGE_LAST"

    goto :goto_0

    .line 575
    :pswitch_7
    const-string v0, "NEXT_PAGE_FIRST"

    goto :goto_0

    .line 577
    :pswitch_8
    const-string v0, "NEXT_PAGE_LEFT_COLUMN"

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private static handleDpadHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;III[[II)I
    .locals 19
    .param p0, "parent"    # Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .param p1, "iconIdx"    # I
    .param p2, "cntX"    # I
    .param p3, "cntY"    # I
    .param p4, "matrix"    # [[I
    .param p5, "increment"    # I

    .prologue
    .line 333
    if-nez p4, :cond_0

    .line 334
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Dpad navigation requires a matrix."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_0
    const/4 v15, -0x1

    .line 338
    .local v15, "newIconIndex":I
    const/16 v18, -0x1

    .line 339
    .local v18, "xPos":I
    const/4 v3, -0x1

    .line 341
    .local v3, "yPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_3

    .line 342
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v0, p3

    if-ge v14, v0, :cond_2

    .line 343
    aget-object v1, p4, v2

    aget v1, v1, v14

    move/from16 v0, p1

    if-ne v1, v0, :cond_1

    .line 344
    move/from16 v18, v2

    .line 345
    move v3, v14

    .line 342
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 341
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v14    # "j":I
    :cond_3
    add-int v2, v18, p5

    :goto_2
    if-ltz v2, :cond_5

    move/from16 v0, p2

    if-ge v2, v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 356
    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/home/HomeFocusLogic;->inspectMatrixHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;IIII[[I)I

    move-result v15

    const/4 v1, -0x1

    if-eq v15, v1, :cond_4

    move/from16 v16, v15

    .line 381
    .end local v15    # "newIconIndex":I
    .local v16, "newIconIndex":I
    :goto_3
    return v16

    .line 355
    .end local v16    # "newIconIndex":I
    .restart local v15    # "newIconIndex":I
    :cond_4
    add-int v2, v2, p5

    goto :goto_2

    .line 366
    :cond_5
    const/4 v2, -0x1

    .line 367
    const/4 v13, 0x1

    .local v13, "coeff":I
    :goto_4
    move/from16 v0, p3

    if-ge v13, v0, :cond_9

    .line 368
    mul-int v1, v13, p5

    add-int v6, v3, v1

    .line 369
    .local v6, "nextYPos1":I
    mul-int v1, v13, p5

    sub-int v17, v3, v1

    .line 370
    .local v17, "nextYPos2":I
    mul-int v1, p5, v13

    add-int v2, v18, v1

    :goto_5
    if-ltz v2, :cond_8

    move/from16 v0, p2

    if-ge v2, v0, :cond_8

    move-object/from16 v4, p0

    move v5, v2

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 371
    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->inspectMatrixHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;IIII[[I)I

    move-result v15

    const/4 v1, -0x1

    if-eq v15, v1, :cond_6

    move/from16 v16, v15

    .line 373
    .end local v15    # "newIconIndex":I
    .restart local v16    # "newIconIndex":I
    goto :goto_3

    .end local v16    # "newIconIndex":I
    .restart local v15    # "newIconIndex":I
    :cond_6
    move-object/from16 v7, p0

    move v8, v2

    move/from16 v9, v17

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    .line 375
    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/home/HomeFocusLogic;->inspectMatrixHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;IIII[[I)I

    move-result v15

    const/4 v1, -0x1

    if-eq v15, v1, :cond_7

    move/from16 v16, v15

    .line 377
    .end local v15    # "newIconIndex":I
    .restart local v16    # "newIconIndex":I
    goto :goto_3

    .line 370
    .end local v16    # "newIconIndex":I
    .restart local v15    # "newIconIndex":I
    :cond_7
    add-int v2, v2, p5

    goto :goto_5

    .line 367
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v6    # "nextYPos1":I
    .end local v17    # "nextYPos2":I
    :cond_9
    move/from16 v16, v15

    .line 381
    .end local v15    # "newIconIndex":I
    .restart local v16    # "newIconIndex":I
    goto :goto_3
.end method

.method private static handleDpadVertical(Lcom/android/launcher3/common/base/view/CellLayoutChildren;III[[II)I
    .locals 21
    .param p0, "parent"    # Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .param p1, "iconIndex"    # I
    .param p2, "cntX"    # I
    .param p3, "cntY"    # I
    .param p4, "matrix"    # [[I
    .param p5, "increment"    # I

    .prologue
    .line 397
    if-nez p4, :cond_0

    .line 398
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Dpad navigation requires a matrix."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    const/16 v16, -0x1

    .line 403
    .local v16, "newIconIndex":I
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_1

    move/from16 v17, v16

    .line 457
    .end local v16    # "newIconIndex":I
    .local v17, "newIconIndex":I
    :goto_0
    return v17

    .line 407
    .end local v17    # "newIconIndex":I
    .restart local v16    # "newIconIndex":I
    :cond_1
    const/16 v19, -0x1

    .line 408
    .local v19, "xPos":I
    const/16 v20, -0x1

    .line 409
    .local v20, "yPos":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 410
    .local v15, "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/Workspace;

    .line 411
    .local v18, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 412
    .local v10, "dragLayer":Landroid/view/ViewGroup;
    const v1, 0x7f11000d

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/home/Hotseat;

    .line 413
    .local v11, "hotseat":Lcom/android/launcher3/home/Hotseat;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/launcher3/home/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 414
    .local v12, "hotseatLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v13

    .line 417
    .local v13, "hotseatParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, p2

    if-ge v14, v0, :cond_4

    .line 418
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    move/from16 v0, p3

    if-ge v3, v0, :cond_3

    .line 419
    aget-object v1, p4, v14

    aget v1, v1, v3

    move/from16 v0, p1

    if-ne v1, v0, :cond_2

    .line 420
    move/from16 v19, v14

    .line 421
    move/from16 v20, v3

    .line 418
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 417
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 433
    .end local v3    # "j":I
    :cond_4
    add-int/lit8 v1, p3, -0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_6

    .line 434
    aget-object v1, p4, v19

    aget v1, v1, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v13, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 435
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_5

    .line 436
    aget-object v1, p4, v19

    aget v1, v1, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 443
    :cond_5
    :goto_3
    add-int v3, v20, p5

    .restart local v3    # "j":I
    :goto_4
    if-ltz v3, :cond_8

    move/from16 v0, p3

    if-ge v3, v0, :cond_8

    if-ltz v3, :cond_8

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 444
    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/home/HomeFocusLogic;->inspectMatrixVertical(Lcom/android/launcher3/common/base/view/CellLayoutChildren;Landroid/view/View;III[[I)I

    move-result v16

    const/4 v1, -0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_7

    move/from16 v17, v16

    .line 445
    .end local v16    # "newIconIndex":I
    .restart local v17    # "newIconIndex":I
    goto/16 :goto_0

    .line 439
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "j":I
    .end local v17    # "newIconIndex":I
    .restart local v16    # "newIconIndex":I
    :cond_6
    aget-object v1, p4, v19

    aget v1, v1, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_3

    .line 443
    .restart local v3    # "j":I
    :cond_7
    add-int v3, v3, p5

    goto :goto_4

    .line 450
    :cond_8
    if-lez p5, :cond_9

    .line 451
    add-int/lit8 v6, v3, -0x1

    .line 452
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    move-object v4, v13

    move-object v5, v2

    move/from16 v8, p3

    move-object/from16 v9, p4

    .line 451
    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->inspectMatrixVertical(Lcom/android/launcher3/common/base/view/CellLayoutChildren;Landroid/view/View;III[[I)I

    move-result v16

    const/4 v1, -0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_9

    move/from16 v17, v16

    .line 453
    .end local v16    # "newIconIndex":I
    .restart local v17    # "newIconIndex":I
    goto/16 :goto_0

    .end local v17    # "newIconIndex":I
    .restart local v16    # "newIconIndex":I
    :cond_9
    move/from16 v17, v16

    .line 457
    .end local v16    # "newIconIndex":I
    .restart local v17    # "newIconIndex":I
    goto/16 :goto_0
.end method

.method public static handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I
    .locals 8
    .param p0, "keyCode"    # I
    .param p1, "cntX"    # I
    .param p2, "cntY"    # I
    .param p3, "map"    # [[I
    .param p4, "iconIdx"    # I
    .param p5, "pageIndex"    # I
    .param p6, "pageCount"    # I
    .param p7, "parent"    # Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .prologue
    .line 98
    invoke-virtual {p7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/home/HotseatCellLayout;

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 101
    .local v6, "isHotseat":Z
    :goto_0
    const/4 v7, -0x1

    .line 102
    .local v7, "newIndex":I
    sparse-switch p0, :sswitch_data_0

    .line 169
    :cond_0
    :goto_1
    return v7

    .line 99
    .end local v6    # "isHotseat":Z
    .end local v7    # "newIndex":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 104
    .restart local v6    # "isHotseat":Z
    .restart local v7    # "newIndex":I
    :sswitch_0
    const/4 v5, -0x1

    move-object v0, p7

    move v1, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/home/HomeFocusLogic;->handleDpadHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;III[[II)I

    move-result v7

    .line 105
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    .line 106
    if-lez p5, :cond_3

    .line 107
    if-eqz v6, :cond_2

    .line 108
    const/4 v7, -0x4

    goto :goto_1

    .line 110
    :cond_2
    const/4 v7, -0x2

    goto :goto_1

    .line 112
    :cond_3
    if-nez p5, :cond_0

    .line 113
    const/16 v7, -0xb

    goto :goto_1

    .line 115
    :cond_4
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    add-int/lit8 v0, p6, -0x1

    if-ge p5, v0, :cond_0

    .line 116
    if-eqz v6, :cond_5

    .line 117
    const/4 v7, -0x8

    goto :goto_1

    .line 119
    :cond_5
    const/16 v7, -0x9

    goto :goto_1

    .line 124
    :sswitch_1
    const/4 v5, 0x1

    move-object v0, p7

    move v1, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/home/HomeFocusLogic;->handleDpadHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;III[[II)I

    move-result v7

    .line 125
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v0, :cond_7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_7

    add-int/lit8 v0, p6, -0x1

    if-ge p5, v0, :cond_7

    .line 126
    if-eqz v6, :cond_6

    .line 127
    const/4 v7, -0x8

    goto :goto_1

    .line 129
    :cond_6
    const/16 v7, -0x9

    goto :goto_1

    .line 131
    :cond_7
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 132
    if-lez p5, :cond_9

    .line 133
    if-eqz v6, :cond_8

    .line 134
    const/4 v7, -0x4

    goto :goto_1

    .line 136
    :cond_8
    const/4 v7, -0x2

    goto :goto_1

    .line 138
    :cond_9
    if-nez p5, :cond_0

    .line 139
    const/16 v7, -0xb

    goto :goto_1

    .line 144
    :sswitch_2
    const/4 v5, 0x1

    move-object v0, p7

    move v1, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/home/HomeFocusLogic;->handleDpadVertical(Lcom/android/launcher3/common/base/view/CellLayoutChildren;III[[II)I

    move-result v7

    .line 145
    goto :goto_1

    .line 147
    :sswitch_3
    const/4 v5, -0x1

    move-object v0, p7

    move v1, p4

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/home/HomeFocusLogic;->handleDpadVertical(Lcom/android/launcher3/common/base/view/CellLayoutChildren;III[[II)I

    move-result v7

    .line 148
    goto :goto_1

    .line 150
    :sswitch_4
    invoke-static {}, Lcom/android/launcher3/home/HomeFocusLogic;->handleMoveHome()I

    move-result v7

    .line 151
    goto :goto_1

    .line 153
    :sswitch_5
    invoke-static {}, Lcom/android/launcher3/home/HomeFocusLogic;->handleMoveEnd()I

    move-result v7

    .line 154
    goto/16 :goto_1

    .line 156
    :sswitch_6
    invoke-static {p5, p6}, Lcom/android/launcher3/home/HomeFocusLogic;->handlePageDown(II)I

    move-result v7

    .line 157
    goto/16 :goto_1

    .line 159
    :sswitch_7
    invoke-static {p5}, Lcom/android/launcher3/home/HomeFocusLogic;->handlePageUp(I)I

    move-result v7

    .line 160
    goto/16 :goto_1

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_7
        0x5d -> :sswitch_6
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method private static handleMoveEnd()I
    .locals 1

    .prologue
    .line 465
    const/4 v0, -0x7

    return v0
.end method

.method private static handleMoveHome()I
    .locals 1

    .prologue
    .line 461
    const/4 v0, -0x6

    return v0
.end method

.method private static handlePageDown(II)I
    .locals 1
    .param p0, "pageIndex"    # I
    .param p1, "pageCount"    # I

    .prologue
    .line 469
    add-int/lit8 v0, p1, -0x1

    if-ge p0, v0, :cond_0

    .line 470
    const/4 v0, -0x8

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x7

    goto :goto_0
.end method

.method private static handlePageUp(I)I
    .locals 1
    .param p0, "pageIndex"    # I

    .prologue
    .line 476
    if-lez p0, :cond_0

    .line 477
    const/4 v0, -0x3

    .line 481
    :goto_0
    return v0

    .line 478
    :cond_0
    if-nez p0, :cond_1

    .line 479
    const/16 v0, -0xb

    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, -0x6

    goto :goto_0
.end method

.method private static inspectMatrixHorizontal(Lcom/android/launcher3/common/base/view/CellLayoutChildren;IIII[[I)I
    .locals 5
    .param p0, "parent"    # Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "cntX"    # I
    .param p4, "cntY"    # I
    .param p5, "matrix"    # [[I

    .prologue
    .line 495
    const/4 v1, -0x1

    .line 496
    .local v1, "newIconIndex":I
    invoke-static {p1, p2, p3, p4}, Lcom/android/launcher3/home/HomeFocusLogic;->isValid(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p5, p1

    aget v3, v3, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 497
    aget-object v3, p5, p1

    aget v3, v3, p2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 498
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 507
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "newIconIndex":I
    .local v2, "newIconIndex":I
    :goto_0
    return v2

    .line 501
    .end local v2    # "newIconIndex":I
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "newIconIndex":I
    :cond_1
    aget-object v3, p5, p1

    aget v1, v3, p2

    move v2, v1

    .line 505
    .end local v1    # "newIconIndex":I
    .restart local v2    # "newIconIndex":I
    goto :goto_0

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "newIconIndex":I
    .restart local v1    # "newIconIndex":I
    :cond_2
    move v2, v1

    .line 507
    .end local v1    # "newIconIndex":I
    .restart local v2    # "newIconIndex":I
    goto :goto_0
.end method

.method private static inspectMatrixVertical(Lcom/android/launcher3/common/base/view/CellLayoutChildren;Landroid/view/View;III[[I)I
    .locals 16
    .param p0, "parent"    # Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "cntX"    # I
    .param p4, "cntY"    # I
    .param p5, "matrix"    # [[I

    .prologue
    .line 512
    const/4 v8, -0x1

    .line 513
    .local v8, "newIconIndex":I
    const/4 v10, -0x1

    .line 514
    .local v10, "tempDistance":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v9, v11, 0x2

    .line 517
    .local v9, "referencePosition":I
    const/4 v11, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v11, v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->isValid(IIII)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 518
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v7, v0, :cond_6

    .line 519
    aget-object v11, p5, v7

    aget v11, v11, p2

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 521
    move-object/from16 v0, p0

    instance-of v11, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    if-eqz v11, :cond_1

    .line 522
    aget-object v11, p5, v7

    aget v11, v11, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 526
    .local v4, "child":Landroid/view/View;
    :goto_1
    if-eqz v4, :cond_0

    instance-of v11, v4, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v11, :cond_2

    .line 518
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 524
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .restart local v4    # "child":Landroid/view/View;
    goto :goto_1

    .line 529
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v5, v11, 0x2

    .line 530
    .local v5, "childPosition":I
    sub-int v11, v9, v5

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 531
    .local v6, "distanceFromReference":I
    const/4 v11, -0x1

    if-ne v8, v11, :cond_4

    .line 532
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v11, :cond_3

    .line 533
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v11, v12, v14

    if-nez v11, :cond_3

    .line 534
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p5, v11

    aget v8, v11, p2

    .line 538
    :goto_3
    move v10, v6

    goto :goto_2

    .line 536
    :cond_3
    aget-object v11, p5, v7

    aget v8, v11, p2

    goto :goto_3

    .line 540
    :cond_4
    if-ge v6, v10, :cond_0

    .line 541
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v11, :cond_5

    .line 542
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v11, v12, v14

    if-nez v11, :cond_5

    .line 544
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v12

    aget-object v11, p5, v11

    aget v8, v11, p2

    .line 548
    :goto_4
    move v10, v6

    goto :goto_2

    .line 546
    :cond_5
    aget-object v11, p5, v7

    aget v8, v11, p2

    goto :goto_4

    .line 554
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childPosition":I
    .end local v6    # "distanceFromReference":I
    .end local v7    # "i":I
    :cond_6
    return v8
.end method

.method private static isValid(IIII)Z
    .locals 1
    .param p0, "xPos"    # I
    .param p1, "yPos"    # I
    .param p2, "countX"    # I
    .param p3, "countY"    # I

    .prologue
    .line 490
    if-ltz p0, :cond_0

    if-ge p0, p2, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static printMatrix([[I)V
    .locals 10
    .param p0, "matrix"    # [[I

    .prologue
    const/4 v9, 0x0

    .line 587
    const-string v5, "HomeFocusLogic"

    const-string v6, "\tprintMap:"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    array-length v3, p0

    .line 589
    .local v3, "m":I
    aget-object v5, p0, v9

    array-length v4, v5

    .line 591
    .local v4, "n":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 592
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "\t\t"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "colY":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 594
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%3d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, p0, v1

    aget v8, v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 596
    :cond_0
    const-string v5, "HomeFocusLogic"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 598
    .end local v0    # "colY":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public static shouldConsume(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 81
    const/16 v0, 0x15

    if-eq p0, v0, :cond_0

    const/16 v0, 0x16

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x43

    if-eq p0, v0, :cond_0

    const/16 v0, 0x70

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
