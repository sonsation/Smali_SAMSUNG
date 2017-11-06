.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 3739
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    .prologue
    .line 3739
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3742
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v3, :cond_0

    .line 3743
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 3744
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3746
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_1

    .line 3763
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 3749
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_3

    .line 3750
    const/4 v0, 0x0

    .line 3751
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3752
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-wide v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 3754
    :cond_2
    if-eqz v0, :cond_0

    .line 3755
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v3, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 3756
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 3759
    .end local v0    # "handled":Z
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v3, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 3760
    if-eqz v2, :cond_0

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
