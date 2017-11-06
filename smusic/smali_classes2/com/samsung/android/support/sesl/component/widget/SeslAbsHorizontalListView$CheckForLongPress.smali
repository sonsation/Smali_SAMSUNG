.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 3715
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    .prologue
    .line 3715
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 3718
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v5, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 3719
    .local v5, "motionPosition":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3720
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3721
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v4, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 3722
    .local v4, "longPressPosition":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3724
    .local v2, "longPressId":J
    const/4 v1, 0x0

    .line 3725
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v6, :cond_0

    .line 3726
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    .line 3728
    :cond_0
    if-eqz v1, :cond_2

    .line 3729
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v7, -0x1

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 3730
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 3731
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3736
    .end local v1    # "handled":Z
    .end local v2    # "longPressId":J
    .end local v4    # "longPressPosition":I
    :cond_1
    :goto_0
    return-void

    .line 3733
    .restart local v1    # "handled":Z
    .restart local v2    # "longPressId":J
    .restart local v4    # "longPressPosition":I
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v7, 0x2

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    goto :goto_0
.end method
