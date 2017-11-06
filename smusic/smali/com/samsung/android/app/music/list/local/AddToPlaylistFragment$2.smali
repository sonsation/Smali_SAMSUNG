.class Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;
.super Ljava/lang/Object;
.source "AddToPlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 209
    const-string v2, "UiList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " onItemClick() | position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | view: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 213
    .local v3, "a":Landroid/app/Activity;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "args_checked_item_ids"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 215
    .local v4, "checkedItemIds":[J
    if-eqz v4, :cond_1

    array-length v13, v4

    .line 216
    .local v13, "size":I
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    .line 217
    .local v12, "samsungAnalyticsManager":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    const-wide/16 v6, -0x10

    cmp-long v2, p3, v6

    if-nez v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "2652"

    int-to-long v6, v13

    invoke-virtual {v12, v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 220
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 221
    new-instance v2, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;-><init>(Landroid/app/Activity;[JZ)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/util/task/AddToNowPlayingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 274
    :cond_0
    :goto_1
    return-void

    .line 215
    .end local v12    # "samsungAnalyticsManager":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    .end local v13    # "size":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 222
    .restart local v12    # "samsungAnalyticsManager":Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;
    .restart local v13    # "size":I
    :cond_2
    const-wide/16 v6, -0xb

    cmp-long v2, p3, v6

    if-nez v2, :cond_4

    .line 223
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "2653"

    int-to-long v6, v13

    invoke-virtual {v12, v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 225
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_3

    .line 226
    new-instance v2, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;-><init>(Landroid/app/Activity;[JZZZ)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 228
    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 229
    new-instance v2, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;-><init>(Landroid/app/Activity;[JZZZ)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 231
    :cond_4
    const-wide/16 v6, -0xf

    cmp-long v2, p3, v6

    if-nez v2, :cond_6

    .line 232
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "2651"

    int-to-long v6, v13

    invoke-virtual {v12, v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 235
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    if-nez v2, :cond_5

    .line 236
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    const/4 v2, 0x1

    const/4 v5, 0x1

    sget-object v6, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v3, v4, v2, v5, v6}, Lcom/samsung/android/app/music/common/dialog/CreateOnlinePlaylistDialogFragment$CreateOnlinePlaylistDialogLauncher;->show(Landroid/app/Activity;[JZZLjava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 242
    .local v10, "fm":Landroid/app/FragmentManager;
    const-string v2, "CreatePlaylistDialogFragment"

    invoke-virtual {v10, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v9

    .line 243
    .local v9, "fg":Landroid/app/Fragment;
    if-nez v9, :cond_0

    .line 244
    const/4 v2, 0x1

    const/4 v5, 0x1

    .line 245
    invoke-static {v4, v2, v5}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;

    move-result-object v11

    .line 246
    .local v11, "fragment":Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v5}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 247
    const-string v2, "CreatePlaylistDialogFragment"

    invoke-virtual {v11, v10, v2}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    .end local v9    # "fg":Landroid/app/Fragment;
    .end local v10    # "fm":Landroid/app/FragmentManager;
    .end local v11    # "fragment":Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-ltz v2, :cond_0

    .line 255
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_8

    .line 256
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    .line 257
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    .line 258
    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->access$000(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->isSyncPlaylist(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "online"

    .line 257
    :goto_2
    move-wide/from16 v0, p3

    invoke-static {v5, v0, v1, v2}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistCount(Landroid/content/Context;JLjava/lang/String;)I

    move-result v8

    .line 261
    .local v8, "count":I
    array-length v2, v4

    add-int/2addr v2, v8

    const/16 v5, 0x3e8

    if-le v2, v5, :cond_8

    .line 262
    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {v2}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "MaxExceed"

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 258
    .end local v8    # "count":I
    :cond_7
    const-string v2, "local"

    goto :goto_2

    .line 266
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "2654"

    int-to-long v6, v13

    invoke-virtual {v12, v2, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 268
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    new-instance v2, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;

    const/4 v7, 0x1

    move-wide/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;-><init>(Landroid/app/Activity;[JJZ)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 271
    :cond_9
    new-instance v2, Lcom/samsung/android/app/music/common/util/task/AddToThisPlaylistTask;

    move-wide/from16 v0, p3

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/samsung/android/app/music/common/util/task/AddToThisPlaylistTask;-><init>(Landroid/app/Activity;[JJ)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/common/util/task/AddToThisPlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method
