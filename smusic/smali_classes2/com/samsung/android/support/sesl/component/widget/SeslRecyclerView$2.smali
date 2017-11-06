.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;
.super Landroid/os/Handler;
.source "SeslRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 649
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 652
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 654
    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    if-nez v7, :cond_1

    .line 655
    const-string v7, "SeslRecyclerView"

    const-string v8, "No adapter attached; skipping MSG_HOVERSCROLL_MOVE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 658
    :cond_1
    const/4 v5, 0x0

    .line 660
    .local v5, "offset":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;J)J

    .line 661
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$102(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;J)J

    .line 663
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 665
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 669
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 670
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 671
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 672
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 675
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z

    .line 678
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v4

    .line 683
    .local v4, "count":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-ge v7, v8, :cond_10

    const/4 v1, 0x1

    .line 685
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_7

    if-lez v4, :cond_7

    .line 686
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 687
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getBottom()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_6

    .line 688
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v9, v9, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_11

    :cond_6
    const/4 v1, 0x1

    .line 692
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    if-lez v7, :cond_12

    const/4 v2, 0x1

    .line 694
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_8

    .line 695
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_8

    .line 696
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 697
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, v8, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_13

    const/4 v2, 0x1

    .line 701
    .end local v3    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 702
    invoke-static {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 701
    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 704
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_14

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_14

    .line 705
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v9

    int-to-double v10, v9

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 712
    :cond_9
    :goto_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 713
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    .line 714
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 715
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1602(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 716
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 717
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 718
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 719
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1902(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z

    .line 732
    :cond_c
    :goto_6
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 736
    if-gez v5, :cond_d

    if-nez v2, :cond_e

    :cond_d
    if-lez v5, :cond_19

    if-eqz v1, :cond_19

    .line 739
    :cond_e
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    .line 740
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setScrollState(I)V

    .line 743
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    if-eqz v7, :cond_f

    .line 744
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IIZ)V

    .line 748
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 683
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 688
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 692
    .end local v3    # "child":Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 697
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 706
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_15

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_15

    .line 707
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v9

    int-to-double v10, v9

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    goto/16 :goto_5

    .line 708
    :cond_15
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$100(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)J

    move-result-wide v8

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 709
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v9

    int-to-double v10, v9

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    goto/16 :goto_5

    .line 722
    :cond_16
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    .line 723
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_18

    :cond_17
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    if-eq v7, v8, :cond_c

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 724
    :cond_18
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/view/View;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1602(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;)Landroid/view/View;

    .line 725
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2002(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 726
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$2202(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 727
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1802(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 728
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1902(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z

    goto/16 :goto_6

    .line 751
    :cond_19
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getOverScrollMode()I

    move-result v6

    .line 752
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_1a

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1f

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 753
    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-nez v7, :cond_1f

    :cond_1a
    const/4 v0, 0x1

    .line 755
    .local v0, "canOverscroll":Z
    :goto_7
    if-eqz v0, :cond_1e

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 756
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureTopGlow()V

    .line 757
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->ensureBottomGlow()V

    .line 758
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_20

    .line 759
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 760
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 761
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 762
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 774
    :cond_1b
    :goto_8
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 775
    :cond_1c
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 778
    :cond_1d
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z

    .line 781
    :cond_1e
    if-nez v0, :cond_0

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 782
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)Z

    goto/16 :goto_0

    .line 753
    .end local v0    # "canOverscroll":Z
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 764
    .restart local v0    # "canOverscroll":Z
    :cond_20
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1b

    .line 765
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 766
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 767
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 768
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 769
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 770
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_8

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
