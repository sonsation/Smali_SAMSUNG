.class Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;
.super Ljava/lang/Object;
.source "AbsRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;

.field final synthetic val$header:Lcom/samsung/android/app/music/milk/store/widget/Expandable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V
    .locals 1
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->val$header:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 610
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->getScrolledPosition()I

    move-result v0

    .line 611
    .local v0, "pos":I
    if-nez v0, :cond_1

    .line 612
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->val$header:Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/Expandable;->expand(Z)Z

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->count:I

    .line 616
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->count:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 617
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$6;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
