.class Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;
.super Ljava/lang/Object;
.source "RecommendRadioActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->createRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

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

    .line 166
    instance-of v0, p3, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter$RecommendRadioViewHolder;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->access$100(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;)Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;

    .line 168
    .local v9, "station":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;

    .line 169
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2$1;-><init>(Lcom/samsung/android/app/music/milk/store/recommendradio/RecommendRadioActivity$2;)V

    .line 181
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;->getStationId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, v5

    move v8, v5

    .line 169
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 183
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "993"

    const-string v2, "9923"

    .line 185
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;->getStationTitle()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v9    # "station":Lcom/samsung/android/app/music/common/model/milkrecommendradio/RecommendRadioStation;
    :cond_0
    return-void
.end method
