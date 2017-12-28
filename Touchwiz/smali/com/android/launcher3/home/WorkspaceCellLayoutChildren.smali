.class public Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;
.super Lcom/android/launcher3/common/base/view/CellLayoutChildren;
.source "WorkspaceCellLayoutChildren.java"


# static fields
.field private static final GRID_CHANGE_ANIMATION_DELAY:I = 0x190

.field private static final GRID_CHANGE_ANIMATION_DURATION:I = 0x12c


# instance fields
.field private final mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

.field private mIsGridChanging:Z

.field private mPreviousRectMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    .line 46
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method private startGridChangeAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 84
    .local v0, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 85
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setCrossHairAnimatedVisibility(IZ)V

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    .line 89
    :cond_0
    new-instance v1, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;-><init>(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method


# virtual methods
.method protected buildCustomAnimationSet(Landroid/view/View;IIII)V
    .locals 35
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    if-nez v6, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 124
    .local v26, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v26, :cond_4

    const-wide/16 v24, -0x64

    .line 125
    .local v24, "dbId":J
    :goto_1
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v29

    .line 126
    .local v29, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/graphics/Rect;

    .line 127
    .local v31, "prevRect":Landroid/graphics/Rect;
    if-eqz v31, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 129
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    .line 130
    .local v17, "absXY":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 133
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v30, v0

    .line 134
    .local v30, "parentOffset":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getLocationOnScreen([I)V

    .line 135
    const/4 v6, 0x0

    aget v8, v17, v6

    const/4 v10, 0x0

    aget v10, v30, v10

    sub-int/2addr v8, v10

    aput v8, v17, v6

    .line 137
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_2

    .line 138
    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p4, v0

    .line 139
    move/from16 v0, p2

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p2, v0

    .line 140
    move/from16 v0, p5

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p5, v0

    .line 141
    move/from16 v0, p3

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v0, v6

    move/from16 p3, v0

    .line 144
    :cond_2
    new-instance v23, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v8, 0x1

    aget v8, v17, v8

    const/4 v10, 0x0

    aget v10, v17, v10

    sub-int v11, p4, p2

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v17, v11

    sub-int v12, p5, p3

    add-int/2addr v11, v12

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v8, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v23, "currentRect":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_5

    .line 151
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v5, v6, v8

    .line 152
    .local v5, "scaleX":F
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v7, v6, v8

    .line 154
    .local v7, "scaleY":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v27, v6, v5

    .line 155
    .local v27, "moveX":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    int-to-float v6, v6

    div-float v28, v6, v7

    .line 157
    .local v28, "moveY":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 159
    .local v4, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v34, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 178
    .end local v5    # "scaleX":F
    .end local v7    # "scaleY":F
    .local v34, "translate":Landroid/view/animation/TranslateAnimation;
    :goto_2
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 179
    .local v20, "childAnimationSet":Landroid/view/animation/AnimationSet;
    const-wide/16 v10, 0x12c

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v6, :cond_3

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 183
    .local v19, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 184
    new-instance v18, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    invoke-direct {v0, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 185
    .local v18, "alpha":Landroid/view/animation/AlphaAnimation;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 191
    .end local v18    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v19    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 192
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 124
    .end local v4    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v17    # "absXY":[I
    .end local v20    # "childAnimationSet":Landroid/view/animation/AnimationSet;
    .end local v23    # "currentRect":Landroid/graphics/Rect;
    .end local v24    # "dbId":J
    .end local v27    # "moveX":F
    .end local v28    # "moveY":F
    .end local v29    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v30    # "parentOffset":[I
    .end local v31    # "prevRect":Landroid/graphics/Rect;
    .end local v34    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_4
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v24, v0

    goto/16 :goto_1

    .line 163
    .restart local v17    # "absXY":[I
    .restart local v23    # "currentRect":Landroid/graphics/Rect;
    .restart local v24    # "dbId":J
    .restart local v29    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .restart local v30    # "parentOffset":[I
    .restart local v31    # "prevRect":Landroid/graphics/Rect;
    :cond_5
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v9, v6, v8

    .line 165
    .local v9, "scale":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v32, v6, v8

    .line 166
    .local v32, "previousCenterX":F
    move-object/from16 v0, v31

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v33, v6, v8

    .line 167
    .local v33, "previousCenterY":F
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v21, v6, v8

    .line 168
    .local v21, "currentCenterX":F
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v8, v10

    add-float v22, v6, v8

    .line 170
    .local v22, "currentCenterY":F
    sub-float v6, v32, v21

    div-float v27, v6, v9

    .line 171
    .restart local v27    # "moveX":F
    sub-float v6, v33, v22

    div-float v28, v6, v9

    .line 173
    .restart local v28    # "moveY":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v4

    move v11, v9

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 175
    .restart local v4    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v34, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v6, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v34    # "translate":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_2

    .line 187
    .end local v9    # "scale":F
    .end local v21    # "currentCenterX":F
    .end local v22    # "currentCenterY":F
    .end local v32    # "previousCenterX":F
    .end local v33    # "previousCenterY":F
    .restart local v19    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .restart local v20    # "childAnimationSet":Landroid/view/animation/AnimationSet;
    :cond_6
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3
.end method

.method public callRefreshLiveIcon()V
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 241
    .local v2, "itemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 242
    .local v1, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, "childView":Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_0

    .line 245
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher3/common/view/IconView;->onLiveIconRefresh()V

    goto :goto_0

    .line 248
    .end local v1    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_1
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 56
    .local v0, "workspace":Lcom/android/launcher3/home/Workspace;
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    :cond_0
    const/high16 v1, 0x60000

    .line 60
    :goto_1
    return v1

    .line 55
    .end local v0    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    check-cast v1, Lcom/android/launcher3/home/Workspace;

    move-object v0, v1

    goto :goto_0

    .line 60
    .restart local v0    # "workspace":Lcom/android/launcher3/home/Workspace;
    :cond_2
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getDescendantFocusability()I

    move-result v1

    goto :goto_1
.end method

.method public isGridChanging()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    return v0
.end method

.method public makePreviousRectMap(Landroid/view/View;)V
    .locals 18
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 202
    .local v12, "tag":Ljava/lang/Object;
    const/4 v14, 0x2

    new-array v2, v14, [I

    .line 203
    .local v2, "absXY":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 206
    const/4 v14, 0x2

    new-array v8, v14, [I

    .line 207
    .local v8, "parentOffset":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getLocationOnScreen([I)V

    .line 208
    const/4 v14, 0x0

    aget v15, v2, v14

    const/16 v16, 0x0

    aget v16, v8, v16

    sub-int v15, v15, v16

    aput v15, v2, v14

    .line 211
    if-nez v12, :cond_1

    const-wide/16 v6, -0x64

    .line 213
    .end local v12    # "tag":Ljava/lang/Object;
    .local v6, "dbId":J
    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 214
    .local v10, "scaleX":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 216
    .local v11, "scaleY":F
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v14, :cond_0

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v10

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v11

    .line 221
    :cond_0
    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-float v5, v14

    .line 222
    .local v5, "left":F
    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-float v13, v14

    .line 223
    .local v13, "top":F
    const/4 v14, 0x0

    aget v14, v2, v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v10

    add-float v9, v14, v15

    .line 224
    .local v9, "right":F
    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v11

    add-float v3, v14, v15

    .line 226
    .local v3, "bottom":F
    new-instance v4, Landroid/graphics/Rect;

    float-to-int v14, v5

    float-to-int v15, v13

    float-to-int v0, v9

    move/from16 v16, v0

    float-to-int v0, v3

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v4, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 227
    .local v4, "childViewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mPreviousRectMap:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6, v7, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 228
    return-void

    .line 211
    .end local v3    # "bottom":F
    .end local v4    # "childViewRect":Landroid/graphics/Rect;
    .end local v5    # "left":F
    .end local v6    # "dbId":J
    .end local v9    # "right":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v13    # "top":F
    .restart local v12    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local v12    # "tag":Ljava/lang/Object;
    iget-wide v6, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    check-cast v0, Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mGridChangeAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->onLayout(ZIIII)V

    .line 74
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->startGridChangeAnimation()V

    .line 77
    :cond_0
    return-void
.end method

.method public setGridChangeState(Z)V
    .locals 0
    .param p1, "isGridChanging"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->mIsGridChanging:Z

    .line 232
    return-void
.end method
