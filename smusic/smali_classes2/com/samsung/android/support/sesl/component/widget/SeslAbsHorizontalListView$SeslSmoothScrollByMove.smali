.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeslSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 6665
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    .prologue
    .line 6665
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 6667
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6668
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6676
    :cond_0
    :goto_0
    return-void

    .line 6671
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6672
    .local v0, "remain":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    .line 6675
    .end local v0    # "remain":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
