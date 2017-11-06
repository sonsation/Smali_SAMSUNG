.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;
.super Ljava/lang/Object;
.source "MusicRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectedListenerWrapper"
.end annotation


# instance fields
.field private selectionEndPosition:I

.field private selectionStartPosition:I

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 831
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 835
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 844
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 845
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    int-to-float v2, p1

    int-to-float v3, p2

    .line 847
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->onMultipleSelectStart()V

    .line 852
    :cond_1
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 16
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 856
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v12

    if-nez v12, :cond_0

    .line 903
    :goto_0
    return-void

    .line 860
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    .line 861
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 862
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p2

    int-to-float v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->findNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    .line 865
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    if-ge v12, v13, :cond_2

    .line 866
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 867
    .local v11, "tempPosition":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 868
    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    .line 871
    .end local v11    # "tempPosition":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v6

    .line 872
    .local v6, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v12, :cond_5

    .line 873
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 874
    .local v2, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v5

    .line 875
    .local v5, "headerCount":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    sub-int/2addr v12, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 876
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    sub-int/2addr v12, v5

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    .line 877
    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v6    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->getSpanCount()I

    move-result v7

    .line 878
    .local v7, "numColumns":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    rem-int v10, v12, v7

    .line 879
    .local v10, "startColumn":I
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    rem-int v4, v12, v7

    .line 880
    .local v4, "endColumn":I
    if-le v10, v4, :cond_3

    .line 881
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    sub-int v13, v10, v4

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .line 882
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    sub-int v13, v10, v4

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    .line 883
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    rem-int v10, v12, v7

    .line 884
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    rem-int v4, v12, v7

    .line 886
    :cond_3
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .local v8, "position":I
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    if-gt v8, v12, :cond_6

    .line 888
    rem-int v3, v8, v7

    .line 889
    .local v3, "column":I
    if-gt v10, v3, :cond_4

    if-gt v3, v4, :cond_4

    .line 890
    add-int v9, v8, v5

    .line 891
    .local v9, "realPosition":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v12

    const/4 v13, 0x0

    .line 892
    invoke-virtual {v2, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v14

    .line 891
    invoke-interface {v12, v13, v9, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->onItemSelected(Landroid/view/View;IJ)V

    .line 887
    .end local v9    # "realPosition":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 895
    .end local v2    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .end local v3    # "column":I
    .end local v4    # "endColumn":I
    .end local v5    # "headerCount":I
    .end local v7    # "numColumns":I
    .end local v8    # "position":I
    .end local v10    # "startColumn":I
    .restart local v6    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_5
    instance-of v12, v6, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v12, :cond_6

    .line 896
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionStartPosition:I

    .restart local v8    # "position":I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->selectionEndPosition:I

    if-gt v8, v12, :cond_6

    .line 898
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 899
    invoke-virtual {v14}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v14

    invoke-interface {v12, v13, v8, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->onItemSelected(Landroid/view/View;IJ)V

    .line 897
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 902
    .end local v6    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .end local v8    # "position":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultiSelectedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;

    move-result-object v12

    invoke-interface {v12}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;->onMultipleSelectStop()V

    goto/16 :goto_0
.end method

.method public onMultiSelected(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "seslRecyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J

    .prologue
    .line 840
    return-void
.end method
