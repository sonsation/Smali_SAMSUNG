.class Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;
.super Lcom/samsung/android/app/music/list/LoadMoreHelper;
.source "PurchasedTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurchasedTrackLoadMoreHelper"
.end annotation


# instance fields
.field private filter:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;Lcom/samsung/android/app/music/list/common/FilterOptionManager;)V
    .locals 0
    .param p2, "filterOption"    # Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/LoadMoreHelper;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;->filter:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    .line 452
    return-void
.end method


# virtual methods
.method protected hasMore(Landroid/database/Cursor;)Z
    .locals 3
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 465
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;->filter:Lcom/samsung/android/app/music/list/common/FilterOptionManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/FilterOptionManager;->getFilterOption()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 468
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "drm_track_view_more_yn"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public loadMoreInternal()V
    .locals 3

    .prologue
    .line 456
    const-string v1, "PurchasedTrackFragment"

    const-string v2, "loadMoreInternal"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment$PurchasedTrackLoadMoreHelper;->this$0:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 459
    .local v0, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPurchasedDrmTracks(Z)I

    .line 460
    return-void
.end method
