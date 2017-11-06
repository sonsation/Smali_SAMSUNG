.class public Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
.super Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
.source "CreatePlaylistDialogFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CreatePlaylistDialogFragment"


# instance fields
.field private mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    return-void
.end method

.method public static getNewInstance([JZZ)Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    .locals 5
    .param p0, "ids"    # [J
    .param p1, "finishActivity"    # Z
    .param p2, "launchTrackActivity"    # Z

    .prologue
    .line 51
    const-string v2, "CreatePlaylistDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewInstance() - ids: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;-><init>()V

    .line 53
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "args_checked_item_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 55
    const-string v2, "args_finish_activity"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    const-string v2, "args_launch_track_activity"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    return-object v1
.end method


# virtual methods
.method protected onClickNegativeButton()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2655"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onClickPositiveButton()V
    .locals 10

    .prologue
    .line 108
    const-string v1, "CreatePlaylistDialogFragment"

    const-string/jumbo v6, "onClickPositiveButton()"

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 110
    .local v2, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "newPlaylistName":Ljava/lang/String;
    const-string v1, "args_checked_item_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 114
    .local v3, "ids":[J
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getPlaylistId(Ljava/lang/String;)I

    move-result v1

    int-to-long v4, v1

    .line 117
    .local v4, "playlistId":J
    if-nez v3, :cond_1

    .line 118
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v9, "extras":Landroid/os/Bundle;
    const-string v1, "args_launch_picker_activity"

    const/4 v6, 0x1

    invoke-virtual {v9, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const v1, 0x100005

    .line 121
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v6, v8, v9}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    .end local v9    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2656"

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_0
    return-void

    .line 124
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;

    const-string v6, "args_finish_activity"

    .line 125
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "args_launch_track_activity"

    .line 126
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;-><init>(Landroid/app/Activity;[JJZZLjava/lang/String;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v1, v6}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 65
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 66
    return-void

    .line 65
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 71
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 72
    const-string v1, "CreateMyPlaylist"

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;

    invoke-direct {v4, v0, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupLocalWorkExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/DialogFragment;Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;

    invoke-direct {v4, v0, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/DialogFragment;Lcom/samsung/android/app/musiclibrary/ui/dialog/PlaylistNameEditable;)V

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method protected onCreateRenamePlaylistName(Ljava/lang/String;)Z
    .locals 11
    .param p1, "newPlaylistName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/app/Activity;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v9

    const-string v3, "name=? COLLATE NOCASE"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 89
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-lez v1, :cond_2

    .line 95
    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v1, v9

    .line 103
    :goto_1
    return v1

    .line 95
    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 96
    :cond_3
    :goto_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 97
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 99
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_7

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CRPL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move v1, v10

    .line 101
    goto :goto_1

    .line 95
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 88
    :catch_2
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :catchall_0
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    throw v1

    :catch_3
    move-exception v2

    invoke-virtual {v5, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_7
    move v1, v9

    .line 103
    goto :goto_1

    .line 95
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v1

    goto :goto_3
.end method

.method protected onSetDescriptionResId()I
    .locals 1

    .prologue
    .line 202
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_2

    .line 203
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const v0, 0x7f0a028b

    .line 210
    :goto_0
    return v0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const v0, 0x7f0a028a

    goto :goto_0

    .line 208
    :cond_1
    const v0, 0x7f0a028c

    goto :goto_0

    .line 210
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onSetDescriptionResId()I

    move-result v0

    goto :goto_0
.end method

.method protected onSetEditTextInitialMessage()Ljava/lang/String;
    .locals 17

    .prologue
    .line 145
    const v1, 0x7f0a0151

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "defaultName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 147
    .local v13, "suggestedName":Ljava/lang/String;
    const/4 v10, 0x1

    .line 149
    .local v10, "number":I
    const/4 v7, 0x0

    .line 150
    .local v7, "c":Landroid/database/Cursor;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    .line 151
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v14, "name"

    aput-object v14, v3, v1

    .line 152
    .local v3, "projection":[Ljava/lang/String;
    const-string v4, "name != \'\'"

    .line 153
    .local v4, "selection":Ljava/lang/String;
    const-string v6, "name"

    .line 154
    .local v6, "orderBy":Ljava/lang/String;
    const/4 v5, 0x0

    .line 158
    .local v5, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 159
    if-nez v7, :cond_1

    .line 160
    const/4 v1, 0x0

    .line 184
    if-eqz v7, :cond_0

    .line 185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_0
    :goto_0
    return-object v1

    .line 162
    :cond_1
    :try_start_1
    const-string v1, "%s %03d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x1

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "number":I
    .local v11, "number":I
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v13

    .line 170
    const/4 v9, 0x0

    .local v9, "done":Z
    move v10, v11

    .line 171
    .end local v11    # "number":I
    .restart local v10    # "number":I
    :goto_1
    if-nez v9, :cond_2

    .line 172
    const/4 v9, 0x1

    .line 173
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v11, v10

    .line 174
    .end local v10    # "number":I
    .restart local v11    # "number":I
    :goto_2
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6

    .line 175
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, "playlistname":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 177
    const-string v1, "%s %03d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v15, 0x1

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "number":I
    .restart local v10    # "number":I
    :try_start_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v1, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 178
    const/4 v9, 0x0

    .line 180
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v11, v10

    .line 181
    .end local v10    # "number":I
    .restart local v11    # "number":I
    goto :goto_2

    .line 184
    .end local v11    # "number":I
    .end local v12    # "playlistname":Ljava/lang/String;
    .restart local v10    # "number":I
    :cond_2
    if-eqz v7, :cond_3

    .line 185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_3
    const-string v1, "CreatePlaylistDialogFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onSetEditTextInitialMessage() - suggestedName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v13

    .line 189
    goto :goto_0

    .line 184
    .end local v9    # "done":Z
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v7, :cond_4

    .line 185
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 184
    .end local v10    # "number":I
    .restart local v11    # "number":I
    :catchall_1
    move-exception v1

    move v10, v11

    .end local v11    # "number":I
    .restart local v10    # "number":I
    goto :goto_4

    .end local v10    # "number":I
    .restart local v9    # "done":Z
    .restart local v11    # "number":I
    .restart local v12    # "playlistname":Ljava/lang/String;
    :cond_5
    move v10, v11

    .end local v11    # "number":I
    .restart local v10    # "number":I
    goto :goto_3

    .end local v10    # "number":I
    .end local v12    # "playlistname":Ljava/lang/String;
    .restart local v11    # "number":I
    :cond_6
    move v10, v11

    .end local v11    # "number":I
    .restart local v10    # "number":I
    goto :goto_1
.end method

.method protected onSetPositiveButtonResId()I
    .locals 1

    .prologue
    .line 81
    const v0, 0x7f0a0097

    return v0
.end method

.method protected onSetTitleResId()I
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 195
    const v0, 0x7f0a028d

    .line 197
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0a00f3

    goto :goto_0
.end method
