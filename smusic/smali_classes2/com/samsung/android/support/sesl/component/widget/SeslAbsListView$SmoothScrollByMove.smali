.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0

    .prologue
    .line 6885
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    .prologue
    .line 6885
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6887
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6888
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6896
    :goto_0
    return-void

    .line 6891
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6892
    .local v0, "remain":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 6895
    .end local v0    # "remain":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
