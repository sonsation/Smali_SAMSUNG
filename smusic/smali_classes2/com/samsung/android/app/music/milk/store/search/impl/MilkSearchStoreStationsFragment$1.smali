.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;
.super Ljava/lang/Object;
.source "MilkSearchStoreStationsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getRecyclerViewOnItemClickListener()Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

.field final synthetic val$searchStationsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->val$searchStationsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1, "listView"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vh"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->access$000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;Landroid/content/Context;Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->val$searchStationsAdapter:Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreStationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    .line 90
    .local v9, "searchStation":Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;
    if-nez v9, :cond_0

    .line 116
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;

    .line 94
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreStationsFragment$1;)V

    .line 112
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;->getStationId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v5

    move v8, v5

    .line 94
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "967"

    const-string v2, "9682"

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
