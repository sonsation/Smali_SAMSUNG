.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .prologue
    .line 6300
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 6302
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v0

    .line 6303
    .local v0, "activeId":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/view/VelocityTracker;

    move-result-object v2

    .line 6304
    .local v2, "vt":Landroid/view/VelocityTracker;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-static {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v1

    .line 6305
    .local v1, "scroller":Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;
    if-eqz v2, :cond_0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 6321
    :cond_0
    :goto_0
    return-void

    .line 6309
    :cond_1
    const/16 v4, 0x3e8

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6310
    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    neg-float v3, v4

    .line 6312
    .local v3, "xvel":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    const/4 v4, 0x0

    .line 6313
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isScrollingInDirection(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6315
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const-wide/16 v6, 0x28

    invoke-virtual {v4, p0, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6317
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6318
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v5, 0x3

    iput v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6319
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable$1;->this$1:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
