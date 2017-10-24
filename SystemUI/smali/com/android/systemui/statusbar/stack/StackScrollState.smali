.class public Lcom/android/systemui/statusbar/stack/StackScrollState;
.super Ljava/lang/Object;
.source "StackScrollState.java"


# instance fields
.field private final mClearAllTopPadding:I

.field private final mHostView:Landroid/view/ViewGroup;

.field private mStateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableView;",
            "Lcom/android/systemui/statusbar/stack/StackViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    const v1, 0x7f0d02d4

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    .line 45
    return-void
.end method

.method private resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 77
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 78
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .end local v0    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    .line 80
    .restart local v0    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 84
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    .line 85
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 86
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 87
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 88
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    .line 89
    instance-of v1, p1, Lcom/android/systemui/statusbar/NotificationBottomBarView;

    if-eqz v1, :cond_1

    .line 90
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    .line 76
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 106
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 107
    .local v4, "numChildren":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_9

    .line 108
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 109
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v7, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 110
    .local v5, "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {p0, v0, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 107
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    :cond_1
    instance-of v7, v0, Lcom/android/systemui/statusbar/DismissView;

    if-eqz v7, :cond_5

    move-object v1, v0

    .line 114
    check-cast v1, Lcom/android/systemui/statusbar/DismissView;

    .line 115
    .local v1, "dismissView":Lcom/android/systemui/statusbar/DismissView;
    iget v7, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mClearAllTopPadding:I

    if-ge v7, v10, :cond_3

    move v6, v9

    .line 116
    .local v6, "visible":Z
    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move v7, v8

    :goto_3
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(Z)V

    goto :goto_1

    .end local v6    # "visible":Z
    :cond_3
    move v6, v8

    .line 115
    goto :goto_2

    .restart local v6    # "visible":Z
    :cond_4
    move v7, v9

    .line 116
    goto :goto_3

    .line 117
    .end local v1    # "dismissView":Lcom/android/systemui/statusbar/DismissView;
    .end local v6    # "visible":Z
    :cond_5
    instance-of v7, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    if-eqz v7, :cond_0

    move-object v2, v0

    .line 118
    check-cast v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 119
    .local v2, "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    iget v7, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    if-gtz v7, :cond_7

    move v6, v9

    .line 121
    .restart local v6    # "visible":Z
    :goto_4
    if-eqz v6, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/EmptyShadeView;->willBeGone()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_6
    move v7, v8

    .line 120
    :goto_5
    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/EmptyShadeView;->performVisibilityAnimation(Z)V

    goto :goto_1

    .end local v6    # "visible":Z
    :cond_7
    move v6, v8

    .line 119
    goto :goto_4

    .restart local v6    # "visible":Z
    :cond_8
    move v7, v9

    .line 121
    goto :goto_5

    .line 105
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "emptyShadeView":Lcom/android/systemui/statusbar/EmptyShadeView;
    .end local v5    # "state":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v6    # "visible":Z
    :cond_9
    return-void
.end method

.method public applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z
    .locals 13
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 132
    if-nez p2, :cond_0

    .line 133
    const-string/jumbo v1, "StackScrollStateNoSuchChild"

    const-string/jumbo v2, "No child state was found when applying this state to the hostView"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_0
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->gone:Z

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x0

    return v1

    .line 140
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 142
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 143
    .local v0, "height":I
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 146
    .local v8, "newHeight":I
    if-eq v0, v8, :cond_2

    .line 147
    const/4 v1, 0x0

    invoke-virtual {p1, v8, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v12

    .line 151
    .local v12, "shadowAlpha":F
    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 154
    .local v9, "newShadowAlpha":F
    cmpl-float v1, v12, v9

    if-eqz v1, :cond_3

    .line 155
    invoke-virtual {p1, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 159
    :cond_3
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 163
    iget-boolean v2, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 162
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 166
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 169
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 172
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    int-to-float v10, v1

    .line 173
    .local v10, "oldClipTopAmount":F
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    int-to-float v1, v1

    cmpl-float v1, v10, v1

    if-eqz v1, :cond_4

    .line 174
    iget v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 176
    :cond_4
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_6

    move-object v11, p1

    .line 177
    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 178
    .local v11, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    if-eqz v1, :cond_5

    .line 179
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipToActualHeight(Z)V

    .line 181
    :cond_5
    invoke-virtual {v11, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 183
    .end local v11    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    .line 191
    .local v1, "alpha":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v13

    .line 192
    .local v13, "yTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationX()F

    move-result v12

    .line 193
    .local v12, "xTranslation":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    .line 194
    .local v14, "zTranslation":F
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 195
    .local v5, "newAlpha":F
    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 196
    .local v9, "newYTranslation":F
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 197
    .local v10, "newZTranslation":F
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    .line 198
    :goto_0
    cmpl-float v15, v1, v5

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    cmpl-float v15, v12, v15

    if-nez v15, :cond_2

    .line 200
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v5, v15

    if-nez v15, :cond_7

    const/4 v2, 0x1

    .line 201
    .local v2, "becomesFullyVisible":Z
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_8

    :cond_0
    const/4 v7, 0x0

    .line 203
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    .line 204
    .local v4, "layerType":I
    if-eqz v7, :cond_9

    .line 205
    const/4 v6, 0x2

    .line 207
    .local v6, "newLayerType":I
    :goto_3
    if-eq v4, v6, :cond_1

    .line 208
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 212
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 216
    .end local v2    # "becomesFullyVisible":Z
    .end local v4    # "layerType":I
    .end local v6    # "newLayerType":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v11

    .line 217
    .local v11, "oldVisibility":I
    if-eqz v3, :cond_a

    const/4 v8, 0x4

    .line 218
    .local v8, "newVisibility":I
    :goto_4
    if-eq v8, v11, :cond_3

    .line 219
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v15, :cond_b

    move-object/from16 v15, p1

    check-cast v15, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 226
    :cond_3
    :goto_5
    cmpl-float v15, v13, v9

    if-eqz v15, :cond_4

    .line 227
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 231
    :cond_4
    cmpl-float v15, v14, v10

    if-eqz v15, :cond_5

    .line 232
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationZ(F)V

    .line 189
    :cond_5
    return-void

    .line 197
    .end local v8    # "newVisibility":I
    .end local v11    # "oldVisibility":I
    :cond_6
    const/4 v3, 0x1

    .local v3, "becomesInvisible":Z
    goto :goto_0

    .line 200
    .end local v3    # "becomesInvisible":Z
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "becomesFullyVisible":Z
    goto :goto_1

    .line 202
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v7

    .local v7, "newLayerTypeIsHardware":Z
    goto :goto_2

    .line 206
    .end local v7    # "newLayerTypeIsHardware":Z
    .restart local v4    # "layerType":I
    :cond_9
    const/4 v6, 0x0

    goto :goto_3

    .line 217
    .end local v2    # "becomesFullyVisible":Z
    .end local v4    # "layerType":I
    .restart local v11    # "oldVisibility":I
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 221
    .restart local v8    # "newVisibility":I
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public getHostView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;
    .locals 1
    .param p1, "requestedView"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    return-object v0
.end method

.method public removeViewStateForView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mStateMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public resetViewStates()V
    .locals 8

    .prologue
    .line 57
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 58
    .local v5, "numChildren":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 59
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/StackScrollState;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 60
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 63
    instance-of v7, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v7, :cond_0

    move-object v6, v0

    .line 64
    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 66
    .local v6, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "childRow$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 69
    .local v1, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewState(Lcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_1

    .line 58
    .end local v1    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "childRow$iterator":Ljava/util/Iterator;
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v6    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method
