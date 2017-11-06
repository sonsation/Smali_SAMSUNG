.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
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
    .line 1101
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1104
    const-string v4, "UiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onItemClick() | position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getValidItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 1108
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2000(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1109
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$2000(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getListType()I

    move-result v5

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAlbumUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->crossFadeTo(Landroid/net/Uri;)V

    .line 1111
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1112
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IZ)V

    .line 1113
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    .line 1114
    .local v3, "nowPlayingListAdapter":Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v1

    .line 1115
    .local v1, "cpAttrs":I
    const/4 v2, 0x0

    .line 1116
    .local v2, "detail":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1117
    const-string v2, "Local"

    .line 1121
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$13;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getScreenId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1081"

    invoke-virtual {v4, v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    .end local v1    # "cpAttrs":I
    .end local v2    # "detail":Ljava/lang/String;
    .end local v3    # "nowPlayingListAdapter":Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    :cond_2
    return-void

    .line 1118
    .restart local v1    # "cpAttrs":I
    .restart local v2    # "detail":Ljava/lang/String;
    .restart local v3    # "nowPlayingListAdapter":Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;
    :cond_3
    const v4, 0x80002

    if-ne v1, v4, :cond_1

    .line 1119
    const-string v2, "MOD"

    goto :goto_0
.end method
