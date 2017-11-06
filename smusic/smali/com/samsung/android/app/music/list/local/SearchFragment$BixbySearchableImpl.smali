.class final Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/BixbySearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BixbySearchableImpl"
.end annotation


# instance fields
.field private mListType:I

.field private mOnSearchListener:Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 1

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mListType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/SearchFragment$1;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    return-void
.end method


# virtual methods
.method public onSearchComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 468
    iget v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mListType:I

    if-eq v4, v7, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mOnSearchListener:Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;

    if-nez v4, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v1, -0x1

    .line 472
    .local v1, "beginPosition":I
    const/4 v2, -0x1

    .line 473
    .local v2, "endPosition":I
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    .line 474
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
    iget v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mListType:I

    sparse-switch v4, :sswitch_data_0

    .line 488
    const-string v4, "UiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setOnSearchListener - invalid list type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mListType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_1
    if-eq v1, v7, :cond_2

    .line 492
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 493
    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$1000(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    .line 494
    .local v3, "layoutManager":Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 496
    .end local v3    # "layoutManager":Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mOnSearchListener:Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;

    invoke-interface {v4, v1, v2}, Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;->onSearchFinished(II)V

    .line 498
    iput v7, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mListType:I

    .line 499
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mOnSearchListener:Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;

    goto :goto_0

    .line 476
    :sswitch_0
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getFirstItemPosition(I)I

    move-result v1

    .line 477
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getItemCount(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 478
    goto :goto_1

    .line 480
    :sswitch_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getFirstItemPosition(I)I

    move-result v1

    .line 481
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getItemCount(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 482
    goto :goto_1

    .line 484
    :sswitch_2
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getFirstItemPosition(I)I

    move-result v1

    .line 485
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getItemCount(I)I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 486
    goto :goto_1

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_1
        0x10003 -> :sswitch_0
        0x110001 -> :sswitch_2
    .end sparse-switch
.end method

.method public setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V
    .locals 2
    .param p1, "listType"    # I
    .param p2, "listener"    # Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->this$0:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$800(Lcom/samsung/android/app/music/list/local/SearchFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->access$900(Lcom/samsung/android/app/music/list/local/SearchFragment;Ljava/lang/String;)V

    .line 463
    iput p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mListType:I

    .line 464
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->mOnSearchListener:Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;

    .line 465
    return-void
.end method
