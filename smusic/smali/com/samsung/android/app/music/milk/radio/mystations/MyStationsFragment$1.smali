.class Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;
.super Ljava/lang/Object;
.source "MyStationsFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v5, 0x1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    const-string/jumbo v0, "station_id"

    .line 72
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "stationId":Ljava/lang/String;
    const-string/jumbo v0, "station_station_name"

    .line 74
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "stationName":Ljava/lang/String;
    const-string v0, "MyStationsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick - station name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", station id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;

    .line 80
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1$1;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsFragment$1;)V

    const/4 v4, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 90
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "904"

    const-string v2, "9073"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
