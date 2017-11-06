.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;
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
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 1

    .prologue
    .line 3924
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    .prologue
    .line 3924
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3927
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_1

    .line 3928
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v1, v3, v4

    .line 3929
    .local v1, "index":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3931
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v3, v3, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v3, :cond_2

    .line 3932
    const/4 v0, 0x0

    .line 3933
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->sameWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3934
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-wide v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedRowId:J

    invoke-virtual {v3, v2, v4, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v0

    .line 3936
    :cond_0
    if-eqz v0, :cond_1

    .line 3937
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 3938
    if-eqz v2, :cond_1

    .line 3939
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3947
    .end local v0    # "handled":Z
    .end local v1    # "index":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 3943
    .restart local v1    # "index":I
    .restart local v2    # "v":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v3, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 3944
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method
