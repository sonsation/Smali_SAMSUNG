.class public Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
.super Lcom/samsung/android/app/musiclibrary/ui/list/FragmentLifeCycleItemDecoration;
.source "DividerItemDecoration.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;,
        Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;,
        Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final VERTICAL:I = 0x1


# instance fields
.field private final mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field private mCheckboxOffset:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

.field private mIndexMargin:I

.field private mIndexViewObservable:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

.field private final mInsetLeft:I

.field private final mInsetRight:I

.field private mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private final mOrientation:I

.field private final mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

.field private final mWinsetDividerPadding:Landroid/graphics/Rect;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)V
    .locals 8
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    .prologue
    const/4 v7, 0x0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/FragmentLifeCycleItemDecoration;-><init>()V

    .line 46
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckboxOffset:I

    .line 48
    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexMargin:I

    .line 112
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Landroid/app/Fragment;

    move-result-object v3

    .line 113
    .local v3, "fragment":Landroid/app/Fragment;
    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 115
    .local v2, "context":Landroid/content/Context;
    instance-of v5, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v5, :cond_0

    .line 116
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .end local v0    # "a":Landroid/app/Activity;
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 118
    :cond_0
    instance-of v5, v3, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 119
    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexViewObservable:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    :cond_1
    move-object v1, v3

    .line 121
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    .line 122
    .local v1, "checkBoxAnimatableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;
    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .end local v3    # "fragment":Landroid/app/Fragment;
    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->access$200(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mOrientation:I

    .line 125
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 127
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mWinsetDividerPadding:Landroid/graphics/Rect;

    .line 128
    iget v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDividerDrawableResId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 129
    const/4 v5, 0x1

    new-array v5, v5, [I

    const v6, 0x1010214

    aput v6, v5, v7

    .line 130
    invoke-virtual {v2, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 131
    .local v4, "typeArray":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 134
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mWinsetDividerPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 139
    .end local v4    # "typeArray":Landroid/content/res/TypedArray;
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->access$400(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mInsetLeft:I

    .line 140
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->access$500(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mInsetRight:I

    .line 142
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .line 143
    return-void

    .line 137
    :cond_3
    iget v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->mDividerDrawableResId:I

    invoke-virtual {v2, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckboxOffset:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    return-object v0
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 243
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v7

    .line 244
    .local v7, "top":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v8

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v9

    sub-int v0, v8, v9

    .line 246
    .local v0, "bottom":I
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v2

    .line 247
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 248
    invoke-virtual {p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 251
    .local v5, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->rightMargin:I

    add-int v4, v8, v9

    .line 252
    .local v4, "left":I
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v6, v4, v8

    .line 253
    .local v6, "right":I
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .end local v6    # "right":I
    :cond_0
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 189
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingStart()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mWinsetDividerPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    .line 190
    .local v13, "left":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingEnd()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mWinsetDividerPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v19, v21, v22

    .line 191
    .local v19, "right":I
    move v6, v13

    .line 192
    .local v6, "fixedLeft":I
    move/from16 v7, v19

    .line 193
    .local v7, "fixedRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mInsetLeft:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckboxOffset:I

    move/from16 v22, v0

    add-int v10, v21, v22

    .line 194
    .local v10, "insetLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mInsetRight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexMargin:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 195
    .local v11, "insetRight":I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v21

    if-nez v21, :cond_2

    .line 196
    add-int/2addr v13, v10

    .line 197
    sub-int v19, v19, v11

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mInsetLeft:I

    move/from16 v21, v0

    add-int v6, v6, v21

    .line 199
    sub-int/2addr v7, v11

    .line 206
    :goto_0
    move/from16 v16, v13

    .line 207
    .local v16, "normalLeft":I
    move/from16 v17, v19

    .line 209
    .local v17, "normalRight":I
    const/16 v21, 0x1

    .line 210
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->canScrollVertically(I)Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_0
    const/4 v12, 0x1

    .line 211
    .local v12, "isScrollable":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v5

    .line 212
    .local v5, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v5, :cond_1

    .line 213
    if-eqz v12, :cond_4

    add-int/lit8 v21, v5, -0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_4

    .line 240
    :cond_1
    return-void

    .line 201
    .end local v5    # "childCount":I
    .end local v9    # "i":I
    .end local v12    # "isScrollable":Z
    .end local v16    # "normalLeft":I
    .end local v17    # "normalRight":I
    :cond_2
    add-int/2addr v13, v11

    .line 202
    sub-int v19, v19, v10

    .line 203
    move v6, v13

    .line 204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mInsetLeft:I

    move/from16 v21, v0

    sub-int v7, v7, v21

    goto :goto_0

    .line 210
    .restart local v16    # "normalLeft":I
    .restart local v17    # "normalRight":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 217
    .restart local v5    # "childCount":I
    .restart local v9    # "i":I
    .restart local v12    # "isScrollable":Z
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 218
    .local v4, "child":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 219
    .local v8, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    add-int/lit8 v21, v5, -0x1

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 220
    .local v14, "nextChild":Landroid/view/View;
    :goto_3
    if-eqz v14, :cond_7

    .line 221
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-object/from16 v15, v21

    .line 223
    .local v15, "nextHolder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    :goto_4
    iget-object v0, v8, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 224
    move/from16 v13, v16

    .line 225
    move/from16 v19, v17

    .line 231
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8, v15}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;->drawDivider(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 233
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 234
    .local v18, "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 235
    .local v20, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    add-int v3, v20, v21

    .line 236
    .local v3, "bottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    .end local v3    # "bottom":I
    .end local v18    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    .end local v20    # "top":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 219
    .end local v14    # "nextChild":Landroid/view/View;
    .end local v15    # "nextHolder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 221
    .restart local v14    # "nextChild":Landroid/view/View;
    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 227
    .restart local v15    # "nextHolder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    :cond_8
    move v13, v6

    .line 228
    move/from16 v19, v7

    goto :goto_5
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 260
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDrawDividerChecker:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 262
    invoke-virtual {p3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;->drawDivider(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexMargin:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 277
    :cond_0
    :goto_1
    return-void

    .line 266
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexMargin:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 274
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 167
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    goto :goto_0
.end method

.method public onFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexViewObservable:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexViewObservable:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;->addOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V

    .line 153
    :cond_1
    return-void
.end method

.method public onFragmentViewDestroyed(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexViewObservable:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexViewObservable:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;->removeOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V

    .line 163
    :cond_1
    return-void
.end method

.method public onIndexVisibleStateChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 177
    .local v0, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_fluid_index_view_margin_right:I

    .line 179
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexMargin:I

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateItemDecorations()V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mIndexMargin:I

    .line 183
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidateItemDecorations()V

    goto :goto_0
.end method

.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckboxOffset:I

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mRecyclerViewableList:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->invalidateItemDecorations()V

    .line 297
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    if-nez v0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->mCheckBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxOffsetAsync(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;)V

    goto :goto_0
.end method
