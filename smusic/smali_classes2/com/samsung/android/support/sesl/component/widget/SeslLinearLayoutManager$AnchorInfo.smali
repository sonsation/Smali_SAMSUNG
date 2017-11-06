.class Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnchorInfo"
.end annotation


# instance fields
.field mCoordinate:I

.field mLayoutFromEnd:Z

.field mPosition:I

.field mValid:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2216
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->reset()V

    .line 2217
    return-void
.end method


# virtual methods
.method assignCoordinateFromPadding()V
    .locals 1

    .prologue
    .line 2231
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 2232
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v0

    .line 2233
    :goto_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2234
    return-void

    .line 2232
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 2233
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_0
.end method

.method public assignFromView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2300
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    .line 2302
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpaceChange()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2307
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2308
    return-void

    .line 2304
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_0
.end method

.method public assignFromViewAndKeepVisibleRect(Landroid/view/View;)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getTotalSpaceChange()I

    move-result v14

    .line 2254
    .local v14, "spaceChange":I
    if-ltz v14, :cond_1

    .line 2255
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 2297
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v10, v17, v14

    .line 2261
    .local v10, "prevLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 2262
    .local v2, "childEnd":I
    sub-int v11, v10, v2

    .line 2263
    .local v11, "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v17, v17, v11

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2265
    if-lez v11, :cond_0

    .line 2266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 2267
    .local v3, "childSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    sub-int v7, v17, v3

    .line 2268
    .local v7, "estimatedChildStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v9

    .line 2269
    .local v9, "layoutStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v17

    sub-int v13, v17, v9

    .line 2271
    .local v13, "previousStartMargin":I
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v17

    add-int v16, v9, v17

    .line 2272
    .local v16, "startReference":I
    sub-int v15, v7, v16

    .line 2273
    .local v15, "startMargin":I
    if-gez v15, :cond_0

    .line 2275
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0

    .line 2279
    .end local v2    # "childEnd":I
    .end local v3    # "childSize":I
    .end local v7    # "estimatedChildStart":I
    .end local v9    # "layoutStart":I
    .end local v10    # "prevLayoutEnd":I
    .end local v11    # "previousEndMargin":I
    .end local v13    # "previousStartMargin":I
    .end local v15    # "startMargin":I
    .end local v16    # "startReference":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    .line 2280
    .local v4, "childStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getStartAfterPadding()I

    move-result v17

    sub-int v15, v4, v17

    .line 2281
    .restart local v15    # "startMargin":I
    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2282
    if-lez v15, :cond_0

    .line 2283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    .line 2284
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v17

    add-int v8, v4, v17

    .line 2285
    .local v8, "estimatedEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v17

    sub-int v12, v17, v14

    .line 2287
    .local v12, "previousLayoutEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    .line 2288
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v17

    sub-int v11, v12, v17

    .line 2289
    .restart local v11    # "previousEndMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->mOrientationHelper:Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslOrientationHelper;->getEndAfterPadding()I

    move-result v17

    const/16 v18, 0x0

    .line 2290
    move/from16 v0, v18

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v6, v17, v18

    .line 2291
    .local v6, "endReference":I
    sub-int v5, v6, v8

    .line 2292
    .local v5, "endMargin":I
    if-gez v5, :cond_0

    .line 2293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    move/from16 v17, v0

    neg-int v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto/16 :goto_0
.end method

.method isViewValidAsAnchor(Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 2247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;

    .line 2248
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 2249
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    .line 2248
    :goto_0
    return v1

    .line 2249
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2220
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    .line 2221
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 2222
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 2223
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    .line 2224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnchorInfo{mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager$AnchorInfo;->mValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
