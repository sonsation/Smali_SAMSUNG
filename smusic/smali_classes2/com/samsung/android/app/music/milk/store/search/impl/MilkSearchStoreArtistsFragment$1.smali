.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreArtistsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;->getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

.field final synthetic val$searchArtistsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->val$searchArtistsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->val$searchArtistsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->val$searchArtistsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getItemCount()I

    move-result v1

    if-ge p4, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->val$searchArtistsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;

    invoke-virtual {v1, p4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreArtistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milksearch/SearchArtist;->getArtistId()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "artistId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreArtistsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "966"

    const-string v3, "9672"

    .line 133
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
