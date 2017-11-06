.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;
.super Ljava/lang/Object;
.source "MyStationsAdapter.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$000(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "stationId":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$100(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "stationName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$002(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$102(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    return v5

    .line 65
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$300(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .line 66
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$200(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addToMyStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 79
    :pswitch_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v8, "stationIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$500(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    .line 82
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$400(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1$2;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;)V

    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->removeStationFromMyStations(Ljava/lang/String;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 93
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "904"

    const-string v2, "9075"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v8    # "stationIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$600(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v7

    .line 99
    .local v7, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v7, :cond_0

    .line 100
    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v9

    .line 104
    .end local v7    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 105
    .local v6, "args":Landroid/os/Bundle;
    const-string v0, "STATION_ID_KEY"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "STATION_TITLE_KEY"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->access$700(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/EditStationActivity;

    .line 110
    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "904"

    const-string v2, "9076"

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
