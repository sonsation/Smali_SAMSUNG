.class public Lcom/android/launcher3/allapps/controller/AppsFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "AppsFocusListener.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    .line 31
    const-string v0, "AppsFocusListener"

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onFocusIn: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onFocusOut: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v9, 0x0

    .line 112
    :goto_0
    return v9

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v9, :cond_1

    .line 77
    const/4 v9, 0x0

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 80
    .local v6, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 82
    .local v3, "currentFocusIdx":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v9, :cond_2

    .line 83
    const/4 v9, 0x0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 86
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 87
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v9, :cond_3

    .line 88
    const/4 v9, 0x0

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 92
    .local v2, "countX":I
    if-nez v2, :cond_4

    .line 93
    const/4 v9, 0x0

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 97
    .local v4, "currentPageItemCount":I
    div-int v10, v4, v2

    rem-int v9, v4, v2

    if-lez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    add-int v5, v10, v9

    .line 98
    .local v5, "currentPageRowCount":I
    const/4 v7, 0x0

    .line 100
    .local v7, "nextFocusIdx":I
    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v9, v2

    if-ge v3, v9, :cond_6

    .line 101
    add-int/lit8 v9, v4, -0x1

    add-int v10, v3, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 107
    :goto_2
    rem-int v9, v7, v2

    div-int v10, v7, v2

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 108
    .local v8, "nextView":Landroid/view/View;
    if-nez v8, :cond_7

    .line 109
    const/4 v9, 0x1

    goto :goto_0

    .line 97
    .end local v5    # "currentPageRowCount":I
    .end local v7    # "nextFocusIdx":I
    .end local v8    # "nextView":Landroid/view/View;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 104
    .restart local v5    # "currentPageRowCount":I
    .restart local v7    # "nextFocusIdx":I
    :cond_6
    move v7, v3

    goto :goto_2

    .line 111
    .restart local v8    # "nextView":Landroid/view/View;
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 112
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v13, :cond_0

    .line 119
    const/4 v13, 0x0

    .line 163
    :goto_0
    return v13

    .line 121
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 122
    .local v5, "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 123
    .local v3, "currentFocusIdx":I
    iget-wide v14, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v14

    .line 125
    .local v4, "currentPageIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v13, :cond_1

    .line 126
    const/4 v13, 0x0

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 129
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 130
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v13, :cond_2

    .line 131
    const/4 v13, 0x0

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/PagedView;

    .line 135
    .local v12, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 136
    .local v2, "countX":I
    if-nez v2, :cond_3

    .line 137
    const/4 v13, 0x0

    goto :goto_0

    .line 140
    :cond_3
    const/4 v7, 0x0

    .line 141
    .local v7, "nextFocusIdx":I
    move v8, v4

    .line 143
    .local v8, "nextPageIdx":I
    move v10, v4

    .local v10, "pageIdx":I
    :goto_1
    if-ltz v10, :cond_4

    .line 144
    add-int/lit8 v7, v3, -0x1

    .line 145
    if-ltz v7, :cond_5

    .line 153
    :cond_4
    if-gez v10, :cond_7

    .line 154
    const/4 v13, 0x1

    goto :goto_0

    .line 148
    :cond_5
    if-nez v10, :cond_6

    const/4 v13, 0x1

    goto :goto_0

    .line 149
    :cond_6
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 150
    .local v11, "prevPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 151
    add-int/lit8 v8, v10, -0x1

    .line 143
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 156
    .end local v11    # "prevPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_7
    invoke-virtual {v12, v8}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 157
    .local v6, "nextCl":Lcom/android/launcher3/common/base/view/CellLayout;
    rem-int v13, v7, v2

    div-int v14, v7, v2

    invoke-virtual {v6, v13, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 158
    .local v9, "nextView":Landroid/view/View;
    if-nez v9, :cond_8

    .line 159
    const/4 v13, 0x1

    goto :goto_0

    .line 162
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 163
    const/4 v13, 0x1

    goto :goto_0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v14, :cond_0

    .line 170
    const/4 v14, 0x0

    .line 213
    :goto_0
    return v14

    .line 172
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 173
    .local v7, "ii":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 174
    .local v3, "currentFocusIdx":I
    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v14

    .line 176
    .local v6, "currentPageIdx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v14, :cond_1

    .line 177
    const/4 v14, 0x0

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 180
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 181
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v14, :cond_2

    .line 182
    const/4 v14, 0x0

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/PagedView;

    .line 185
    .local v13, "pv":Lcom/android/launcher3/common/base/view/PagedView;
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v12

    .line 187
    .local v12, "pageCount":I
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 188
    .local v2, "countX":I
    if-nez v2, :cond_3

    .line 189
    const/4 v14, 0x0

    goto :goto_0

    .line 192
    :cond_3
    const/4 v9, 0x0

    .line 193
    .local v9, "nextFocusIdx":I
    const/4 v10, 0x0

    .line 194
    .local v10, "nextPageIdx":I
    move v10, v6

    :goto_1
    if-ge v10, v12, :cond_4

    .line 195
    add-int/lit8 v9, v3, 0x1

    .line 196
    invoke-virtual {v13, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 197
    .local v5, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    .line 198
    .local v4, "currentItemCount":I
    if-ge v9, v4, :cond_5

    .line 203
    .end local v4    # "currentItemCount":I
    .end local v5    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    if-lt v10, v12, :cond_6

    .line 204
    const/4 v14, 0x1

    goto :goto_0

    .line 201
    .restart local v4    # "currentItemCount":I
    .restart local v5    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_5
    const/4 v3, -0x1

    .line 194
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 206
    .end local v4    # "currentItemCount":I
    .end local v5    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_6
    invoke-virtual {v13, v10}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 207
    .local v8, "nextCl":Lcom/android/launcher3/common/base/view/CellLayout;
    rem-int v14, v9, v2

    div-int v15, v9, v2

    invoke-virtual {v8, v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    .line 208
    .local v11, "nextView":Landroid/view/View;
    if-nez v11, :cond_7

    .line 209
    const/4 v14, 0x1

    goto :goto_0

    .line 212
    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    .line 213
    const/4 v14, 0x1

    goto :goto_0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v7

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v9, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 42
    .local v4, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 44
    .local v3, "currentFocusIdx":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v9, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 48
    .local v1, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 49
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/view/PagedView;

    if-eqz v9, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 54
    .local v2, "countX":I
    if-eqz v2, :cond_0

    .line 58
    sub-int v5, v3, v2

    .line 59
    .local v5, "nextFocusIdx":I
    if-ltz v5, :cond_0

    .line 62
    rem-int v7, v5, v2

    div-int v9, v5, v2

    invoke-virtual {v0, v7, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 63
    .local v6, "nextView":Landroid/view/View;
    if-nez v6, :cond_2

    move v7, v8

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    move v7, v8

    .line 68
    goto :goto_0
.end method
