.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 5622
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->val$performClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5625
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1602(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5627
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 5628
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 5629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5630
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;->val$performClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->run()V

    .line 5632
    :cond_1
    return-void
.end method
