.class Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;
.super Ljava/lang/Object;
.source "SeedResultListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/viewholder/SeedViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

.field final synthetic val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 73
    .local v9, "itemPosition":I
    const-string v0, "SeedResultListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick : Position("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedResultName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;)Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedResultName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .line 77
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getSeedId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    .line 78
    invoke-virtual {v6}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getTrackTitle()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->isExplicit()Z

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/SeedResultListAdapter$1;->val$seed:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->getArtistList()Ljava/util/List;

    move-result-object v8

    .line 76
    invoke-interface/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/adapter/ISeedResultListAdapter;->onItemClicked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 80
    :cond_0
    return-void
.end method
