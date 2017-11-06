.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;
.super Ljava/lang/Object;
.source "RadioHistoryFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getContextMenu(Landroid/view/View;I)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

.field final synthetic val$stationId:Ljava/lang/String;

.field final synthetic val$trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$stationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 299
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 273
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$700(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$stationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v6

    .line 274
    .local v6, "station":Lcom/samsung/android/app/music/common/model/Station;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 275
    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$800(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$trackId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getSimpleTrack(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v8

    .line 276
    .local v8, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$900(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v8}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->shareStation(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/Station;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 277
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "906"

    const-string v2, "9094"

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v6    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v8    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$1000(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 283
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$stationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$trackId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 287
    :sswitch_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v7, "stationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->val$stationId:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$1100(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$3;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 290
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v7}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->removeStationFromMyStations(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 293
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "906"

    const-string v2, "9095"

    .line 294
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a02f9 -> :sswitch_1
        0x7f0a02fa -> :sswitch_2
        0x7f0a0378 -> :sswitch_0
    .end sparse-switch
.end method
