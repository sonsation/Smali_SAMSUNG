.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;
.super Ljava/lang/Object;
.source "MilkSearchStoreSongsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->onViewInitializeCompleted(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$400(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$500(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$600(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    if-nez v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .line 250
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$700(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    .line 251
    .local v1, "searchTrackAdapter":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 253
    .local v2, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v2    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$800(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V

    .line 258
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$900(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isSelectMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setSelectMode(Z)V

    goto :goto_0
.end method
