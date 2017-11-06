.class public Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;
.super Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;
.source "EditOnlinePlaylistDialogFragment.java"


# static fields
.field public static final EDIT_ONLINE_PLAYLIST_TAG:Ljava/lang/String; = "edit_online_playlist"

.field public static final SOUERCE_PLAYLIST_ID:Ljava/lang/String; = "source_playlist_id"

.field private static final TAG:Ljava/lang/String; = "EditOnlinePlaylistDialogFragment"

.field public static final UPDATE_TITLE:Ljava/lang/String; = "update_title"


# instance fields
.field private mInitialMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;-><init>()V

    return-void
.end method

.method public static getNewInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;
    .locals 3
    .param p0, "playlistId"    # Ljava/lang/String;
    .param p1, "sourcePlaylistId"    # Ljava/lang/String;
    .param p2, "updateTitle"    # Z

    .prologue
    .line 42
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;-><init>()V

    .line 43
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "playlist_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v2, "update_title"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string/jumbo v2, "source_playlist_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 178
    .local v1, "targetFragment":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v2, :cond_0

    .line 179
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    .end local v1    # "targetFragment":Landroid/app/Fragment;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "update_title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "newPlaylistName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    .end local v0    # "newPlaylistName":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->dismissAllowingStateLoss()V

    .line 187
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    :cond_0
    const-string v0, "EditOnlinePlaylistDialogFragment"

    const-string v1, "onApiHandled activity is null or destroyed or fragemtn isDetached"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 144
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v6

    .line 146
    .local v6, "newPlaylistName":Ljava/lang/String;
    if-nez p3, :cond_5

    .line 147
    const/4 v8, 0x1

    .line 148
    .local v8, "updated":Z
    if-eqz p5, :cond_3

    array-length v0, p5

    if-lez v0, :cond_3

    .line 149
    const/4 v0, 0x0

    aget-object v0, p5, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 151
    :cond_3
    if-eqz v8, :cond_4

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 154
    :cond_4
    const v0, 0x7f0a0152

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v8    # "updated":Z
    :cond_5
    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    .line 158
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v0, :cond_1

    .line 159
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v7

    .line 160
    .local v7, "resultCode":I
    const/16 v0, 0x106a

    if-ne v7, v0, :cond_6

    .line 161
    const v0, 0x7f0a0152

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_6
    const v0, 0x7f0a031c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    .line 166
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    .end local v7    # "resultCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_7
    const v0, 0x7f0a031c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    .line 171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v6, v0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->setErrorMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onClickNegativeButton()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected onClickPositiveButton()V
    .locals 5

    .prologue
    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v1, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;-><init>()V

    .line 75
    .local v1, "req":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    const-string v2, "00"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->setType(Ljava/lang/String;)V

    .line 76
    new-instance v2, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "source_playlist_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->addSimplePlaylist(Lcom/samsung/android/app/music/common/model/playlist/SimplePlaylist;)V

    .line 79
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePlaylist(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)I

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "playlistId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x100050

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getInitialMessage()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->uninstallShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v0    # "playlistId":Ljava/lang/String;
    .end local v1    # "req":Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0364

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onSetEditTextInitialMessage()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mInitialMessage:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "playlistId":Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "EditOnlinePlaylistDialogFragment"

    const-string/jumbo v3, "onSetEditTextInitialMessage() - playlistId is -1, return"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->dismiss()V

    .line 124
    .end local v8    # "playlistId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 105
    .restart local v8    # "playlistId":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 110
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 112
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mInitialMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_1
    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "playlistId":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v0, "EditOnlinePlaylistDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetEditTextInitialMessage() - name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mInitialMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->mInitialMessage:Ljava/lang/String;

    goto :goto_0

    .line 115
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "playlistId":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "EditOnlinePlaylistDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v6, :cond_2

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 118
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method protected onSetPositiveButtonResId()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f0a0102

    return v0
.end method

.method protected onSetTitleResId()I
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f0a0102

    return v0
.end method

.method protected updatePositiveButton(Ljava/lang/String;)V
    .locals 8
    .param p1, "editText"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v1, 0x1

    .line 54
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->onSetEditTextInitialMessage()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "initialMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v0, ""

    .line 57
    .local v0, "currentError":Ljava/lang/String;
    :goto_0
    const v5, 0x7f0a0152

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "nameExist":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 60
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    check-cast v5, Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 65
    .local v4, "positivieBtn":Landroid/widget/Button;
    if-eqz v4, :cond_3

    .line 66
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    :cond_3
    return-void

    .line 56
    .end local v0    # "currentError":Ljava/lang/String;
    .end local v3    # "nameExist":Ljava/lang/String;
    .end local v4    # "positivieBtn":Landroid/widget/Button;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
