.class Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter$1;
.super Ljava/lang/Object;
.source "TopChartTrackAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->onBindItemViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackDetailViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, "tagPosition":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->access$000(Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter$1;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    .line 127
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 126
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 129
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "982"

    const-string v3, "1544"

    .line 130
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method
