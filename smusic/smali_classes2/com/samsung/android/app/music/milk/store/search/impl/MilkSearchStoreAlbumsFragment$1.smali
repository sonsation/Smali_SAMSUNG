.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreAlbumsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

.field final synthetic val$MilkSearchStoreAlbumsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->val$MilkSearchStoreAlbumsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

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
    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->val$MilkSearchStoreAlbumsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->val$MilkSearchStoreAlbumsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getItemCount()I

    move-result v1

    if-ge p4, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreAlbumsFragment$1;->val$MilkSearchStoreAlbumsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;

    invoke-virtual {v1, p4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreAlbumsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;

    .line 119
    .local v0, "album":Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 120
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "965"

    const-string v3, "9662"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
