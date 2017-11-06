.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 9946
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 9949
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 9950
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPosition(I)V

    .line 9964
    :goto_0
    return-void

    .line 9952
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 9953
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 9954
    .local v0, "movingDistance":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6408(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    .line 9955
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9956
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6202(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I

    .line 9957
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    .line 9962
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 9959
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6202(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I

    .line 9960
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$6200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    goto :goto_1
.end method
