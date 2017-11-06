.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 10429
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 10432
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 10433
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 10447
    :goto_0
    return-void

    .line 10435
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .line 10436
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 10437
    .local v0, "movingDistance":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$5008(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    .line 10438
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$5200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 10439
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    .line 10440
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    .line 10445
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$5300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10442
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I

    .line 10443
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    goto :goto_1
.end method
