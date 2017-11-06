.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v0

    const v1, 0x80002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemMenuSelected(Landroid/view/View;IJ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 384
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getAudioIds()[J

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_2

    .line 385
    :cond_0
    const-string v1, "SMUSIC-UiList"

    const-string v2, "NowPlayingListAdapter Select menu with wrong position"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .line 390
    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$400(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getAudioId(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getSimpleTrack(Landroid/content/Context;J)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v0

    .line 391
    .local v0, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 393
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1544"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
