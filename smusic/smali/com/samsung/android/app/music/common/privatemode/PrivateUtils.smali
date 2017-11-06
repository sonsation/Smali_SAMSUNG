.class public final Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;
.super Ljava/lang/Object;
.source "PrivateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/privatemode/PrivateUtils$privateMode;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static getContentCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    const/4 v7, 0x0

    .line 90
    .local v7, "songCount":I
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    .line 91
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v4

    .line 92
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_music=1 AND is_secretbox=0 AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 99
    .local v6, "c":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 100
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 104
    :cond_0
    if-eqz v6, :cond_1

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_1
    return v7

    .line 104
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getFolderTotalCount(Landroid/content/Context;[J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # [J

    .prologue
    const/4 v8, 0x0

    .line 155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .local v7, "where":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 158
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "bucket_id"

    aput-object v3, v2, v0

    const-string v0, "_id"

    .line 160
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->convertAudioIdsToSelection(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 158
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 174
    :cond_0
    if-eqz v6, :cond_1

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 191
    :cond_2
    :goto_0
    return v0

    .line 164
    :cond_3
    :try_start_1
    const-string v0, "bucket_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, " IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    const/16 v0, 0x29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    if-eqz v6, :cond_6

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_6
    :try_start_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v0

    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 181
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 184
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 187
    if-eqz v6, :cond_2

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 187
    :cond_8
    if-eqz v6, :cond_9

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    move v0, v8

    .line 191
    goto :goto_0

    .line 187
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_a

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method public static hasNowPlayingTrack([J)Z
    .locals 9
    .param p0, "list"    # [J

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v4

    .line 119
    .local v4, "isPlaying":Z
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v0

    .line 120
    .local v0, "audioId":J
    array-length v7, p0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_0

    aget-wide v2, p0, v6

    .line 121
    .local v2, "id":J
    if-eqz v4, :cond_1

    cmp-long v8, v0, v2

    if-nez v8, :cond_1

    .line 122
    const-string v5, "PrivateMode"

    const-string v6, "Has a now playing track!!"

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v5, 0x1

    .line 126
    .end local v2    # "id":J
    :cond_0
    return v5

    .line 120
    .restart local v2    # "id":J
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static isEnablePrivateModeMenu(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    .line 113
    invoke-static {p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNeedConfirm(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "moveToPrivate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 130
    const-string v2, "music_player_pref"

    .line 131
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 132
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz p1, :cond_1

    const-string v2, "confirm_popup_move_to_private"

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 135
    .local v0, "isNeedConfirm":Z
    :cond_0
    const-string v2, "PrivateMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PrivateDialogUtils - isNeedConfirm()  moveToPrivate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " confirmPopup : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return v0

    .line 132
    .end local v0    # "isNeedConfirm":Z
    :cond_1
    const-string v2, "confirm_popup_remove_from_private"

    goto :goto_0
.end method

.method public static isPrivateMode()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateMode()Z

    move-result v0

    return v0
.end method

.method public static isPrivateModeItem(Landroid/content/Context;J)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 142
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, -0x1

    .line 144
    invoke-static {p0, v2, v1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMediaInfo(Landroid/content/Context;ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;

    move-result-object v0

    .line 145
    .local v0, "mediaInfo":Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;
    if-eqz v0, :cond_0

    .line 146
    iget-boolean v2, v0, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultMediaDbUtils$MediaInfo;->isPrivate:Z

    .line 148
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static showMoveDialogInternal(Landroid/app/Activity;[JLjava/lang/String;ZZ)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "list"    # [J
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "moveToPrivate"    # Z
    .param p4, "isFolder"    # Z

    .prologue
    .line 70
    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-static {v2, p1, v3, p4}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getInstance(Landroid/content/Context;[JLjava/lang/String;Z)Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    move-result-object v2

    .line 72
    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->show(Landroid/app/Activity;)V

    .line 85
    :goto_0
    return-void

    .line 73
    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->getContentCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_1

    if-nez p4, :cond_1

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "list_items"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 77
    const-string v2, "is_folder"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 79
    const/16 v2, 0x32a

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 82
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p4}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->getInstance(Landroid/content/Context;[JLjava/lang/String;Z)Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;

    move-result-object v2

    .line 83
    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateMoveDialogFragment;->show(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private static showWithConfirm(Landroid/app/Activity;[JZZ)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "list"    # [J
    .param p2, "moveToPrivate"    # Z
    .param p3, "isFolder"    # Z

    .prologue
    .line 64
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getInstance([JZZ)Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    move-result-object v0

    .line 65
    .local v0, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static startPrivateModeMoveOperation(Landroid/app/Activity;[JLjava/lang/String;ZZ)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "list"    # [J
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "moveToPrivate"    # Z
    .param p4, "isFolder"    # Z

    .prologue
    .line 51
    const-string v0, "PrivateMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrivateUtils - starting isMoveToPrivate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->hasNowPlayingTrack([J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->isNeedConfirm(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0, p1, p3, p4}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->showWithConfirm(Landroid/app/Activity;[JZZ)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->showMoveDialogInternal(Landroid/app/Activity;[JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public static startPrivateModeMoveOperation(Landroid/app/Activity;[JZZ)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "list"    # [J
    .param p2, "moveToPrivate"    # Z
    .param p3, "isFolder"    # Z

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->startPrivateModeMoveOperation(Landroid/app/Activity;[JLjava/lang/String;ZZ)V

    .line 47
    return-void
.end method
