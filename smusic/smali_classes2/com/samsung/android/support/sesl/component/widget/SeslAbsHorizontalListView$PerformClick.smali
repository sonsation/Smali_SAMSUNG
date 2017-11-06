.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 3662
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    .prologue
    .line 3662
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 3669
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v6, :cond_1

    .line 3712
    :cond_0
    :goto_0
    return-void

    .line 3671
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v0, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3672
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 3673
    .local v4, "motionPosition":I
    const/4 v3, 0x0

    .line 3674
    .local v3, "handledNotifykeyPress":Z
    const/4 v2, 0x0

    .line 3675
    .local v2, "handledNotifyMultiSelect":Z
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-lez v6, :cond_0

    if-eq v4, v10, :cond_0

    .line 3677
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3678
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3681
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 3683
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3685
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3686
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    invoke-virtual {v6, v5, v4, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    move-result v3

    .line 3691
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-eq v6, v11, :cond_4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-ne v6, v11, :cond_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_0

    .line 3693
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-ne v6, v11, :cond_5

    .line 3694
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3707
    :catch_0
    move-exception v1

    .line 3708
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 3695
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v6

    if-ne v6, v11, :cond_0

    .line 3696
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    .line 3697
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 3698
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v7, -0x1

    invoke-static {v6, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;II)V

    .line 3699
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v6, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1102(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    goto/16 :goto_0

    .line 3701
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v7

    invoke-static {v6, v7, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
