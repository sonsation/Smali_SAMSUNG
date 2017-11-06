.class Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$2;
.super Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "AbsRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
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
    .line 149
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$2;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->dispatchAdapterDataChanged()V

    .line 154
    return-void
.end method
