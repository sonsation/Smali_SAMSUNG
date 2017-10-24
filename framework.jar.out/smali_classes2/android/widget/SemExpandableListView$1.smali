.class Landroid/widget/SemExpandableListView$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/widget/SemExpandableListConnector$ItemDecorator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final WRAPPING_VIEW_ID:I = 0x7ffffc17


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .prologue
    .line 580
    iput-object p1, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V
    .locals 7
    .param p1, "holder"    # Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .param p2, "isLastChild"    # Z

    .prologue
    .line 740
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    if-nez v5, :cond_0

    return-void

    .line 742
    :cond_0
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 744
    .local v3, "itemViewLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-get18(Landroid/widget/SemExpandableListView;)[I

    move-result-object v5

    const/4 v6, 0x0

    aget v1, v5, v6

    .line 745
    .local v1, "dividerHeight":I
    if-eqz p2, :cond_2

    const/16 v2, 0x8

    .line 746
    .local v2, "dividerVisibility":I
    :goto_0
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 749
    .local v0, "bottomMargin":I
    :goto_1
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 753
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    if-eqz v5, :cond_1

    .line 754
    iget-object v5, p1, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 758
    .local v4, "lp":Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v5, v0, 0x2

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 739
    .end local v4    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void

    .line 745
    .end local v0    # "bottomMargin":I
    .end local v2    # "dividerVisibility":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "dividerVisibility":I
    goto :goto_0

    .line 746
    :cond_3
    move v0, v1

    .restart local v0    # "bottomMargin":I
    goto :goto_1
.end method

.method private initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 733
    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get27(Landroid/widget/SemExpandableListView;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 735
    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get29(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 736
    iget-object v0, p0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v0}, Landroid/widget/SemExpandableListView;->-get30(Landroid/widget/SemExpandableListView;)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 732
    return-void
.end method


# virtual methods
.method public onItemDecorate(Landroid/view/View;Landroid/view/View;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/view/View;
    .locals 21
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "pos"    # Landroid/widget/SemExpandableListConnector$PositionMetadata;

    .prologue
    .line 588
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->flatListPos:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get16(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListConnector;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SemExpandableListConnector;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/4 v12, 0x1

    .line 589
    .local v12, "isLastChild":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get18(Landroid/widget/SemExpandableListView;)[I

    move-result-object v19

    const/16 v20, 0x0

    aget v4, v19, v20

    .line 593
    .local v4, "dividerHeight":I
    if-eqz p1, :cond_8

    move-object/from16 v19, p1

    check-cast v19, Landroid/view/ViewGroup;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_8

    .line 594
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    const v20, 0x7ffffc17

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 598
    const v19, 0x7a0a1eff

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    .line 599
    .local v7, "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 601
    .local v8, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 602
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 603
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get10(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get25(Landroid/widget/SemExpandableListView;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_4

    .line 605
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :goto_1
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->refreshDrawableState()V

    .line 611
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 613
    .local v14, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 631
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    .line 634
    :cond_1
    return-object p1

    .line 588
    .end local v4    # "dividerHeight":I
    .end local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v12    # "isLastChild":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "isLastChild":Z
    goto/16 :goto_0

    .line 595
    .restart local v4    # "dividerHeight":I
    :cond_3
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string/jumbo v20, "convertView is neither null nor the wrapping FrameLayout"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 607
    .restart local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 611
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 614
    :cond_6
    if-eqz v8, :cond_0

    .line 615
    const/4 v9, 0x0

    .line 616
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    .line 617
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    .line 619
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    .line 623
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 624
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 625
    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v19, p1

    .line 627
    check-cast v19, Landroid/widget/FrameLayout;

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 628
    iput-object v9, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 629
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 637
    .end local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    new-instance v6, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 638
    .local v6, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;-><init>(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;)V

    .line 639
    .restart local v7    # "holder":Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;
    const v19, 0x7a0a1eff

    move/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 641
    const v19, 0x7ffffc17

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    .line 642
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 643
    move-object/from16 v0, p2

    iput-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->itemView:Landroid/view/View;

    .line 644
    const/4 v9, 0x0

    .line 646
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v16

    .line 647
    .local v16, "t":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 648
    .local v2, "b":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get9(Landroid/widget/SemExpandableListView;)I

    move-result v15

    .line 649
    .local v15, "myB":I
    const/4 v10, 0x0

    .line 650
    .local v10, "indicatorLeft":I
    const/4 v11, 0x0

    .line 653
    .local v11, "indicatorRight":I
    if-ltz v2, :cond_9

    move/from16 v0, v16

    if-le v0, v15, :cond_a

    .line 655
    :cond_9
    return-object v6

    .line 658
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->isLayoutRtl()Z

    move-result v13

    .line 659
    .local v13, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 661
    .local v18, "width":I
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/SemExpandableListPosition;->type:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get11(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get28(Landroid/widget/SemExpandableListView;)I

    move-result v10

    .line 664
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get12(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get31(Landroid/widget/SemExpandableListView;)I

    move-result v11

    .line 671
    :goto_6
    if-eqz v13, :cond_10

    .line 672
    move/from16 v17, v10

    .line 673
    .local v17, "temp":I
    sub-int v10, v18, v11

    .line 674
    sub-int v11, v18, v17

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get35(Landroid/widget/SemExpandableListView;)I

    move-result v19

    sub-int v10, v10, v19

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get35(Landroid/widget/SemExpandableListView;)I

    move-result v19

    sub-int v11, v11, v19

    .line 683
    .end local v17    # "temp":I
    :goto_7
    if-eq v10, v11, :cond_b

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap4(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 688
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_b

    .line 690
    new-instance v9, Landroid/widget/SemExpandableListView$IndicatorImageView;

    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Landroid/widget/SemExpandableListView$IndicatorImageView;-><init>(Landroid/widget/SemExpandableListView;Landroid/content/Context;)V

    .line 691
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/widget/SemExpandableListConnector$PositionMetadata;->position:Landroid/widget/SemExpandableListPosition;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/SemExpandableListView$IndicatorImageView;->setIndicatorPos(Landroid/widget/SemExpandableListPosition;)V

    .line 694
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    invoke-virtual {v9}, Landroid/view/View;->refreshDrawableState()V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get26(Landroid/widget/SemExpandableListView;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 698
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 702
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/SemExpandableListView$1;->initIndicatorImageLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 703
    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 706
    iput-object v9, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    .line 707
    iget-object v0, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->indicatorImgView:Landroid/widget/SemExpandableListView$IndicatorImageView;

    move-object/from16 v20, v0

    invoke-virtual/range {p3 .. p3}, Landroid/widget/SemExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get0(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    :goto_9
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 712
    .end local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v9    # "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_b
    if-lez v4, :cond_c

    .line 713
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get17(Landroid/widget/SemExpandableListView;)Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 714
    .local v5, "dividerView":Landroid/view/View;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 716
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-direct {v14, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 717
    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v19, 0x50

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 718
    invoke-virtual {v5, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/widget/SemExpandableListView;->-wrap3(Landroid/widget/SemExpandableListView;Landroid/widget/SemExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 721
    .local v3, "dividerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 722
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 723
    iput-object v5, v7, Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;->dividerView:Landroid/view/View;

    .line 725
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Landroid/widget/SemExpandableListView$1;->adjustDivider(Landroid/widget/SemExpandableListView$DecoratedItemViewHolder;Z)V

    .line 729
    .end local v3    # "dividerDrawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "dividerView":Landroid/view/View;
    .end local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c
    return-object v6

    .line 663
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get11(Landroid/widget/SemExpandableListView;)I

    move-result v10

    goto/16 :goto_5

    .line 665
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get12(Landroid/widget/SemExpandableListView;)I

    move-result v11

    goto/16 :goto_6

    .line 667
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get28(Landroid/widget/SemExpandableListView;)I

    move-result v10

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get31(Landroid/widget/SemExpandableListView;)I

    move-result v11

    goto/16 :goto_6

    .line 679
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)I

    move-result v19

    add-int v10, v10, v19

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get34(Landroid/widget/SemExpandableListView;)I

    move-result v19

    add-int v11, v11, v19

    goto/16 :goto_7

    .line 700
    .restart local v8    # "indicator":Landroid/graphics/drawable/Drawable;
    .local v9, "indicatorImgView":Landroid/widget/SemExpandableListView$IndicatorImageView;
    :cond_11
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v19, 0x32

    const/16 v20, 0x32

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .restart local v14    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    goto/16 :goto_8

    .line 707
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemExpandableListView$1;->this$0:Landroid/widget/SemExpandableListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/widget/SemExpandableListView;->-get3(Landroid/widget/SemExpandableListView;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_9
.end method

.method public unfoldDecoratedView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 764
    if-nez p1, :cond_0

    return-object v0

    .line 766
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7ffffc17

    if-ne v0, v1, :cond_1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 768
    nop

    nop

    .end local p1    # "convertView":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 773
    .restart local p1    # "convertView":Landroid/view/View;
    :cond_1
    return-object p1
.end method
