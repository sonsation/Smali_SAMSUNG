.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 1

    .prologue
    .line 3855
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    .prologue
    .line 3855
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 3862
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 3896
    :cond_0
    :goto_0
    return-void

    .line 3864
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v0, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3865
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->mClickMotionPosition:I

    .line 3866
    .local v2, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-lez v4, :cond_0

    if-eq v2, v8, :cond_0

    .line 3868
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->sameWindow()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3869
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v5, v2, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3872
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 3874
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v4, v3, v2, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3877
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 3879
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3880
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v5, -0x1

    invoke-static {v4, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3891
    :catch_0
    move-exception v1

    .line 3892
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 3881
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3882
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    .line 3883
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 3884
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v5, -0x1

    invoke-static {v4, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;II)V

    .line 3885
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1302(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I

    goto :goto_0

    .line 3887
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v5

    invoke-static {v4, v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
