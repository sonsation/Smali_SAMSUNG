.class public Lcom/android/launcher3/folder/controller/FolderFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "FolderFocusListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderFocusListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    return-void
.end method

.method public onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 38
    .local v0, "handled":Z
    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    if-eq p2, v1, :cond_0

    const/16 v1, 0x16

    if-ne p2, v1, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x1

    .line 42
    :cond_1
    return v0
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v11, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v10

    .line 85
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 87
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v11, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 91
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 92
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 93
    .local v2, "countX":I
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    .line 94
    .local v3, "countY":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 98
    mul-int v8, v2, v3

    .line 99
    .local v8, "maxItemsPerPage":I
    iget v11, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v4, v11, v8

    .line 100
    .local v4, "currentFocusIdx":I
    rem-int v5, v4, v2

    .line 101
    .local v5, "currentX":I
    div-int v6, v4, v2

    .line 102
    .local v6, "currentY":I
    add-int/lit8 v11, v3, -0x1

    if-ge v6, v11, :cond_0

    .line 106
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 107
    .local v9, "nextView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 111
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 112
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 118
    const/16 v17, 0x0

    .line 164
    :goto_0
    return v17

    .line 120
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 122
    .local v8, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 123
    const/16 v17, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 126
    .local v3, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 127
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/PagedView;

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 128
    const/16 v17, 0x0

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/PagedView;

    .line 132
    .local v16, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    .line 133
    .local v4, "countX":I
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    .line 134
    .local v5, "countY":I
    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    .line 135
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 137
    :cond_4
    mul-int v9, v4, v5

    .line 138
    .local v9, "maxItemsPerPage":I
    iget v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v17, v0

    rem-int v6, v17, v9

    .line 139
    .local v6, "currentFocusIdx":I
    iget v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v17, v0

    div-int v7, v17, v9

    .line 140
    .local v7, "currentPageIdx":I
    const/4 v11, 0x0

    .line 141
    .local v11, "nextFocusIdx":I
    move v13, v7

    .line 142
    .local v13, "nextPageIdx":I
    move v15, v7

    .local v15, "pageIdx":I
    :goto_1
    if-ltz v15, :cond_5

    .line 143
    add-int/lit8 v11, v6, -0x1

    .line 144
    if-ltz v11, :cond_6

    .line 154
    :cond_5
    if-gez v13, :cond_8

    .line 155
    const/16 v17, 0x0

    goto :goto_0

    .line 147
    :cond_6
    if-nez v15, :cond_7

    .line 148
    const/16 v17, 0x0

    goto :goto_0

    .line 150
    :cond_7
    add-int/lit8 v17, v15, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 151
    .local v12, "nextPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    .line 152
    add-int/lit8 v13, v15, -0x1

    .line 142
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 157
    .end local v12    # "nextPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 158
    .local v10, "nextCl":Lcom/android/launcher3/common/base/view/CellLayout;
    rem-int v17, v11, v4

    div-int v18, v11, v4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    .line 159
    .local v14, "nextView":Landroid/view/View;
    if-nez v14, :cond_9

    .line 160
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 163
    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    .line 164
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 170
    const/16 v18, 0x0

    .line 213
    :goto_0
    return v18

    .line 172
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 174
    .local v10, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 175
    const/16 v18, 0x0

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 178
    .local v3, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 179
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/PagedView;

    move/from16 v18, v0

    if-nez v18, :cond_2

    .line 180
    const/16 v18, 0x0

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/PagedView;

    .line 183
    .local v17, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v16

    .line 184
    .local v16, "pageCount":I
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    .line 185
    .local v4, "countX":I
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    .line 186
    .local v5, "countY":I
    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    .line 187
    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    .line 189
    :cond_4
    mul-int v11, v4, v5

    .line 190
    .local v11, "maxItemsPerPage":I
    iget v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v18, v0

    rem-int v6, v18, v11

    .line 191
    .local v6, "currentFocusIdx":I
    iget v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v18, v0

    div-int v9, v18, v11

    .line 192
    .local v9, "currentPageIdx":I
    const/4 v13, 0x0

    .line 193
    .local v13, "nextFocusIdx":I
    const/4 v14, 0x0

    .line 194
    .local v14, "nextPageIdx":I
    move v14, v9

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    .line 195
    add-int/lit8 v13, v6, 0x1

    .line 196
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 197
    .local v8, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    .line 198
    .local v7, "currentItemCount":I
    if-ge v13, v7, :cond_6

    .line 203
    .end local v7    # "currentItemCount":I
    .end local v8    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_5
    move/from16 v0, v16

    if-lt v14, v0, :cond_7

    .line 204
    const/16 v18, 0x0

    goto :goto_0

    .line 201
    .restart local v7    # "currentItemCount":I
    .restart local v8    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_6
    const/4 v6, -0x1

    .line 194
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 206
    .end local v7    # "currentItemCount":I
    .end local v8    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 207
    .local v12, "nextCl":Lcom/android/launcher3/common/base/view/CellLayout;
    rem-int v18, v13, v4

    div-int v19, v13, v4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v15

    .line 208
    .local v15, "nextView":Landroid/view/View;
    if-nez v15, :cond_8

    .line 209
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 212
    :cond_8
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 213
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v10, 0x0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v11, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v10

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 52
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v11, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 56
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 57
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 58
    .local v2, "countX":I
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    .line 59
    .local v3, "countY":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 63
    mul-int v8, v2, v3

    .line 64
    .local v8, "maxItemsPerPage":I
    iget v11, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v4, v11, v8

    .line 65
    .local v4, "currentFocusIdx":I
    rem-int v5, v4, v2

    .line 66
    .local v5, "currentX":I
    div-int v6, v4, v2

    .line 67
    .local v6, "currentY":I
    if-lez v6, :cond_0

    .line 71
    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 72
    .local v9, "nextView":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 76
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 77
    const/4 v10, 0x1

    goto :goto_0
.end method
