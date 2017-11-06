.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 654
    const-string v5, "UiList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onItemClick() | position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 658
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v6, -0x3

    cmp-long v5, p3, v6

    if-nez v5, :cond_2

    .line 659
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 660
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 661
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 662
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 663
    sget-object v5, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    .line 664
    invoke-static {v0, v10, v8, v9, v5}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;->show(Landroid/app/Activity;[JZZLjava/lang/String;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 668
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string v5, "CreatePlaylistDialogFragment"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 669
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 671
    invoke-static {v10, v8, v9}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;

    move-result-object v3

    .line 672
    .local v3, "fragment":Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v3, v5, v8}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 673
    const-string v5, "CreatePlaylistDialogFragment"

    invoke-virtual {v3, v2, v5}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v1    # "fg":Landroid/app/Fragment;
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "fragment":Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    :cond_2
    const v4, 0x100004

    .line 679
    .local v4, "listType":I
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p3, p4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 680
    const v4, 0x100050

    .line 682
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 683
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v5, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v5

    .line 682
    invoke-static {v6, v4, v7, v5}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1047"

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
