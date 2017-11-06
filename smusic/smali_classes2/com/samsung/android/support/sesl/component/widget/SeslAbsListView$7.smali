.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 5834
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->val$performClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5837
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$2502(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 5838
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5839
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 5840
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 5841
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5842
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;->val$performClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->run()V

    .line 5844
    :cond_1
    return-void
.end method
