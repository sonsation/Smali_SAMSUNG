.class Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;
.super Ljava/lang/Object;
.source "AbsRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 601
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->smoothScrollToPosition(I)V

    .line 603
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$400(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$400(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    move-result-object v0

    .line 605
    .local v0, "header":Lcom/samsung/android/app/music/milk/store/widget/Expandable;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V

    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    .end local v0    # "header":Lcom/samsung/android/app/music/milk/store/widget/Expandable;
    :cond_0
    return-void
.end method
