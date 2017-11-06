.class public Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;
.super Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;
.source "EditPlaylistDialogFragment.java"


# static fields
.field public static final EDIT_PLAYLIST_TAG:Ljava/lang/String; = "edit_playlist"

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_TITLE:Ljava/lang/String; = "update_title"


# instance fields
.field private mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/app/music/common/dialog/CreatePlaylistDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    return-void
.end method

.method public static getNewInstance(Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;
    .locals 5
    .param p0, "playlistId"    # Ljava/lang/String;
    .param p1, "updateTitle"    # Z

    .prologue
    .line 36
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewInstance() - playlistId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", updateTitle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;-><init>()V

    .line 39
    .local v1, "dialog":Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "playlist_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v2, "update_title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method protected onClickNegativeButton()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1167"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected onClickPositiveButton()V
    .locals 7

    .prologue
    .line 101
    sget-object v3, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onClickPositiveButton()"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 103
    .local v2, "targetFragment":Landroid/app/Fragment;
    instance-of v3, v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v3, :cond_0

    .line 104
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    .end local v2    # "targetFragment":Landroid/app/Fragment;
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->finishActionMode()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "update_title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "newPlaylistName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    .end local v0    # "newPlaylistName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "playlist_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "playlistId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x100004

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getInitialMessage()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v3, v4, v1, v5}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->uninstallShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v3, :cond_2

    .line 117
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;->getScreenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1168"

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getEditTextMessage()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/dialog/EditTextDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 50
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->mScreenIdGetter:Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;

    .line 51
    return-void

    .line 50
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateRenamePlaylistName(Ljava/lang/String;)Z
    .locals 12
    .param p1, "newPlaylistName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/app/Activity;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 79
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return v10

    .line 87
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v8, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 88
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v11, "playlist_id"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 90
    invoke-static {v0, v1, v8, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_1

    move v1, v9

    :goto_1
    move v10, v1

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_1

    .line 93
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 94
    .local v7, "e":Landroid/database/sqlite/SQLiteConstraintException;
    sget-object v1, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateRenamePlaylistName : SQLiteConstraintException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteConstraintException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetEditTextInitialMessage()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 134
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSetEditTextInitialMessage() activity is null."

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->dismiss()V

    .line 163
    :goto_0
    return-object v8

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "playlistId":Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onSetEditTextInitialMessage() - playlistId is -1, return"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->dismiss()V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 147
    .local v8, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 149
    .local v6, "c":Landroid/database/Cursor;
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 152
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 158
    :cond_2
    if-eqz v6, :cond_3

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_3
    :goto_1
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetEditTextInitialMessage() - name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v7

    .line 156
    .local v7, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    if-eqz v6, :cond_3

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 158
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method protected onSetPositiveButtonResId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0a0102

    return v0
.end method

.method protected onSetTitleResId()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f0a0102

    return v0
.end method

.method protected updatePositiveButton(Ljava/lang/String;)V
    .locals 7
    .param p1, "editText"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x1

    .line 61
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->onSetEditTextInitialMessage()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "initialMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, ""

    .line 64
    .local v0, "currentError":Ljava/lang/String;
    :goto_0
    const v4, 0x7f0a0152

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "nameExist":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    return-void

    .line 63
    .end local v0    # "currentError":Ljava/lang/String;
    .end local v3    # "nameExist":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
