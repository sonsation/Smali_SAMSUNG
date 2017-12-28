.class public Lcom/android/launcher3/appspicker/AppsPickerFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "AppsPickerFocusListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerFocusListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    return-void
.end method

.method private static handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 25
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 47
    .local v18, "rowView":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v21, v23

    check-cast v21, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 48
    .local v21, "viewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 49
    .local v11, "listView":Landroid/widget/ListView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f11003b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    .line 50
    .local v19, "searchContainer":Landroid/widget/FrameLayout;
    const v23, 0x7f110048

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/SearchView;

    .line 51
    .local v20, "searchView":Landroid/widget/SearchView;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    if-nez v23, :cond_2

    .line 52
    :cond_0
    const/16 v22, 0x0

    .line 171
    :goto_1
    return v22

    .line 44
    .end local v11    # "listView":Landroid/widget/ListView;
    .end local v18    # "rowView":Landroid/widget/LinearLayout;
    .end local v19    # "searchContainer":Landroid/widget/FrameLayout;
    .end local v20    # "searchView":Landroid/widget/SearchView;
    .end local v21    # "viewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .restart local v18    # "rowView":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 54
    .restart local v11    # "listView":Landroid/widget/ListView;
    .restart local v19    # "searchContainer":Landroid/widget/FrameLayout;
    .restart local v20    # "searchView":Landroid/widget/SearchView;
    .restart local v21    # "viewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_2
    const/4 v8, 0x0

    .line 55
    .local v8, "iconIndex":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b000f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 56
    .local v12, "maxRowItem":I
    const/16 v23, 0x0

    aget-object v23, v21, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    move/from16 v17, v0

    .line 58
    .local v17, "rowIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v12, :cond_4

    .line 59
    aget-object v23, v21, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 60
    aget-object v23, v21, v7

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    .line 58
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 65
    .local v2, "action":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_5

    const/4 v6, 0x1

    .line 66
    .local v6, "handleKeyEvent":Z
    :goto_3
    const/16 v22, 0x0

    .line 68
    .local v22, "wasHandled":Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 84
    :sswitch_0
    if-eqz v6, :cond_b

    .line 85
    if-lez v17, :cond_11

    .line 86
    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    .line 88
    .local v5, "firstRowView":I
    add-int/lit8 v23, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 89
    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 90
    const/16 v22, 0x1

    goto :goto_1

    .line 65
    .end local v5    # "firstRowView":I
    .end local v6    # "handleKeyEvent":Z
    .end local v22    # "wasHandled":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 70
    .restart local v6    # "handleKeyEvent":Z
    .restart local v22    # "wasHandled":Z
    :sswitch_1
    if-eqz v6, :cond_6

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f11003a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, "addButton":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f110039

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 73
    .local v4, "addButtonContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v23

    if-nez v23, :cond_7

    .line 74
    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 75
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    .line 81
    .end local v3    # "addButton":Landroid/widget/TextView;
    .end local v4    # "addButtonContainer":Landroid/widget/LinearLayout;
    :cond_6
    :goto_4
    const/16 v22, 0x1

    .line 82
    goto/16 :goto_1

    .line 77
    .restart local v3    # "addButton":Landroid/widget/TextView;
    .restart local v4    # "addButtonContainer":Landroid/widget/LinearLayout;
    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->requestFocus()Z

    .line 78
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto :goto_4

    .line 92
    .end local v3    # "addButton":Landroid/widget/TextView;
    .end local v4    # "addButtonContainer":Landroid/widget/LinearLayout;
    .restart local v5    # "firstRowView":I
    :cond_8
    add-int/lit8 v23, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 93
    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 95
    :cond_9
    add-int/lit8 v23, v17, -0x1

    sub-int v23, v23, v5

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 97
    .local v15, "preRowView":Landroid/widget/LinearLayout;
    if-nez v15, :cond_a

    .line 98
    const-string v23, "AppsPickerFocusListener"

    const-string v24, "preRowView is not visible yet"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 101
    :cond_a
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v16, v23

    check-cast v16, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 102
    .local v16, "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_c

    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-nez v23, :cond_c

    .line 103
    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 104
    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 125
    .end local v5    # "firstRowView":I
    .end local v15    # "preRowView":Landroid/widget/LinearLayout;
    .end local v16    # "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_b
    :goto_5
    const/16 v22, 0x1

    .line 126
    goto/16 :goto_1

    .line 107
    .restart local v5    # "firstRowView":I
    .restart local v15    # "preRowView":Landroid/widget/LinearLayout;
    .restart local v16    # "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_c
    const/4 v10, 0x0

    .local v10, "lastVisibleIcon":I
    :goto_6
    if-ge v10, v12, :cond_e

    .line 108
    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_d

    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_10

    .line 109
    :cond_d
    add-int/lit8 v10, v10, -0x1

    .line 113
    :cond_e
    if-ne v10, v12, :cond_f

    .line 114
    add-int/lit8 v10, v10, -0x1

    .line 116
    :cond_f
    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 117
    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_5

    .line 107
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 120
    .end local v5    # "firstRowView":I
    .end local v10    # "lastVisibleIcon":I
    .end local v15    # "preRowView":Landroid/widget/LinearLayout;
    .end local v16    # "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_11
    aget-object v23, v21, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->clearFocus()V

    .line 121
    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->requestFocus()Z

    .line 122
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 128
    :sswitch_2
    if-eqz v6, :cond_15

    .line 129
    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    .line 130
    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    .line 131
    .restart local v5    # "firstRowView":I
    invoke-virtual {v11}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v9

    .line 133
    .local v9, "lastRowView":I
    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 134
    add-int/lit8 v23, v17, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 135
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 137
    :cond_12
    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 138
    add-int/lit8 v23, v17, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 140
    :cond_13
    add-int/lit8 v23, v17, 0x1

    sub-int v23, v23, v5

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 142
    .local v13, "nextRowView":Landroid/widget/LinearLayout;
    if-nez v13, :cond_14

    .line 143
    const-string v23, "AppsPickerFocusListener"

    const-string v24, "nextRowView is not visible yet"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 146
    :cond_14
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v14, v23

    check-cast v14, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 147
    .local v14, "nextViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_16

    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-nez v23, :cond_16

    .line 148
    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 149
    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 166
    .end local v5    # "firstRowView":I
    .end local v9    # "lastRowView":I
    .end local v13    # "nextRowView":Landroid/widget/LinearLayout;
    .end local v14    # "nextViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_15
    :goto_7
    const/16 v22, 0x1

    .line 167
    goto/16 :goto_1

    .line 152
    .restart local v5    # "firstRowView":I
    .restart local v9    # "lastRowView":I
    .restart local v13    # "nextRowView":Landroid/widget/LinearLayout;
    .restart local v14    # "nextViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_16
    const/4 v10, 0x0

    .restart local v10    # "lastVisibleIcon":I
    :goto_8
    if-ge v10, v8, :cond_18

    .line 153
    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_17

    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_1a

    .line 154
    :cond_17
    add-int/lit8 v10, v10, -0x1

    .line 158
    :cond_18
    if-ne v10, v8, :cond_19

    .line 159
    add-int/lit8 v10, v10, -0x1

    .line 161
    :cond_19
    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 162
    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_7

    .line 152
    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 176
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 186
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 196
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
