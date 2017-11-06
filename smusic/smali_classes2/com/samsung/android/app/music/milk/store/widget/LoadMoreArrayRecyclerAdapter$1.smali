.class Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;
.super Landroid/os/Handler;
.source "LoadMoreArrayRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 35
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;"
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getReyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->dispatchScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
