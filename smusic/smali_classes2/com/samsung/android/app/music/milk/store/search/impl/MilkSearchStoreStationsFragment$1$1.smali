.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreStationsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkerFinished(ZLandroid/os/Bundle;)V
    .locals 2
    .param p1, "isWorkerSuccess"    # Z
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p1, :cond_0

    .line 102
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->startActivity(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public showLoadingProgress(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->showLoading(Z)V

    .line 111
    :cond_0
    return-void
.end method
